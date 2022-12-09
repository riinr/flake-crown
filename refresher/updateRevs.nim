proc isNotEmptyStr(x: string): bool =
  x != ""

proc isNotPull(x: string): bool =
  not x.contains "refs/pull"

proc isNotFail(x: string): bool =
  not x.contains "printf quit=1"

proc isNotNull(x: JsonNode): bool =
  x.kind != JNull

proc isRevRef(x: string): bool =
  x.split(",").len == 2

proc isHead(x: JsonNode): bool =
  x["ref"].getStr.startsWith "refs/head"


proc isTag(x: JsonNode): bool =
  x["ref"].getStr.startsWith "refs/tags"


proc refLintToJObject(refLine: string): JsonNode =
  let splited = refLine.split(",")
  %* { "rev": splited[0], "ref": splited[1] }


proc urlOf(pkg: JsonNode): auto =
  pkg["url"].getStr
    .replace(".com:", ".com/")
    .replace("git@", "https://")
    .parseUri


proc dirOf(pkg: JsonNode): string =
  let 
    url  = pkg.urlOf
    name = pkg["name"].getStr.toLower
    pth  = url.path.splitFile[0].strip(chars={'/'})
  fmt"pkgsRev/{url.hostname}/{pth}/{name}"


const GIT_CMD = """git -c credential.helper='' -c credential.helper='!printf quit=1'"""


proc refName(refInfo: JsonNode): string =
  refInfo["ref"].getStr
    .replace("refs/heads/", "")
    .replace("refs/tags/",  "")


proc getRefs(url: JsonNode): seq[JsonNode] =
  let
    parts  = url.getStr.split "?"
    projUrl = parts[0].replace(".com:", ".com/")
      .replace("git@", "https://")
    removeUnwanted  = "|grep -v gh-pages|grep -v '{}'|grep -v doc|sed 's/\\s\\+/,/g'"
    lsRemote        = fmt"{GIT_CMD} ls-remote"
    listTags        = fmt"{lsRemote} {projUrl} {removeUnwanted}"
  execCmdEx(listTags).output
    .split("\n")
    .filter(isNotEmptyStr)
    .filter(isNotFail)
    .filter(isNotPull)
    .filter(isRevRef)
    .map(refLintToJObject)


proc fetchInfo(pkg: JsonNode): auto =
  return proc(gitRef: JsonNode): JsonNode =
    let
      refNam  = gitRef["ref"].getStr
      tmpDir  = fmt"/tmp/{pkg.dirOf}/{refNam}"
      metaDir = fmt"../{pkg.dirOf}"
      url     = pkg.urlOf
      subdir  =
        if url.query.contains "subdir=":
          "/" & url.query.replace("subdir=")
        else:
          ""

    if fileExists fmt"{metaDir}/meta.json":
      let metaCache = fmt"{metaDir}/meta.json".readFile.parseJson
      if metaCache.hasKey("refs") and metaCache["refs"].hasKey(refNam) and
          metaCache["refs"][refNam]["rev"].getStr == gitRef["rev"].getStr:
        return metaCache["refs"][refNam]

    let 
      depArgs =
        if subdir == "":
          "--filter=blob:none --sparse --depth 1"
        else:
          "--depth 1"
      refArg =
        if refNam == "HEAD":
          ""
        else:
          fmt"-b {gitRef.refName}"

    echo fmt"Downloading into {tmpDir}"
    let (cloneOutput, cloneExitCode) = execCmdEx fmt"""
        rm -rf {tmpDir}
        mkdir -p {tmpDir}
        cd {tmpDir}
        {GIT_CMD} clone {depArgs} {refArg} {url} pkg
      """
    if cloneExitCode != 0:
      echo fmt"cannot clone {cloneOutput} {cloneExitCode}"
      return gitRef

    let  (versionInfoTxt, dumpExitCode) = fmt"""
      cd {tmpDir}/pkg{subdir}
      nimble-locker -y --silent dump --json
    """.execCmdEx
    if dumpExitCode != 0:
      echo fmt"cannot dump {versionInfoTxt} {dumpExitCode}"
      return gitRef

    let versionInfo = versionInfoTxt.parseJson
    versionInfo["ref"] = gitRef["ref"]
    versionInfo["rev"] = gitRef["rev"]
    return versionInfo


proc setRefs(pkg: JsonNode): auto =
  return proc(versionInfo: JsonNode): JsonNode =
    result = versionInfo
    pkg["refs"][versionInfo["ref"].getStr] = versionInfo


if stdin.isATTY:
  echo """Expect a json from stdin"""
  quit 1

let
  inputJson = stdin.readAll
  pkg       = inputJson.parseJson
  metaDir   = fmt"../{pkg.dirOf}"

pkg["refs"] = newJObject()
discard pkg["url"]
  .getRefs
  .filter(isNotNull)
  .map(fetchInfo pkg)
  .map(setRefs pkg)

discard  fmt"mkdir -p {metaDir}".execCmdEx
fmt"{metaDir}/meta.json".writeFile pkg.pretty
