#compile-at-mkshell
# update ../pkgsRev
# It expect one package json from pacakges.json
# can be called by ./updatePkgs.nims {pkgName} | {a z}

proc isNotEmptyStr(x: string): bool =
  x != ""

proc isNotPull(x: string): bool =
  not x.contains "refs/pull"

proc isNotBug(x: string): bool =
  not x.contains "refs/bugs"

proc isNotMerge(x: string): bool =
  not x.contains "refs/merge-requests"

proc isNotPipeline(x: string): bool =
  not x.contains "refs/pipelines"

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
    .filter(isNotBug)
    .filter(isNotMerge)
    .filter(isNotPipeline)
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



proc semVerToInt(semver: string): int =
  let 
    parts = semver.split(".")
    major =
      if parts.len > 0: parts[0].align(3, '0')
      else: "000"
    minor =
      if parts.len > 1: parts[1].align(3, '0')
      else: "000"
    patch =
      case parts.len
        of 0: "001"
        of 1: "000"
        of 2: "000"
        else: parts[2].align(3, '0')

  (
    major[^3 .. ^1] &
    minor[^3 .. ^1] &
    patch[^3 .. ^1]
  ).replace("000000000", "1").parseInt


proc cudfPkgName(name: string; ver: string = ""): string =
  let depName = name
    .replace("_"       , "")
    .replace("~"       , "")
    .replace("git://"  , "")
    .replace("http://" , "")
    .replace("https://", "")
    .replace(".com"    , "")
    .replace("."       , "-")
    .replace("/"       , "-")
    .toLower
    .strip(chars = AllChars - IdentChars)

  if "#" in ver:
    let spe = ver.replace("#", "-").replace("_", "")
    if spe notin @["-head", "-master", "-main", "-trunk"]:
      return depName & spe
  return depName


proc cudfDep(refDep: JsonNode): string =
  var verKind = refDep["ver"]["kind"].getStr
  let depStr  = (if refDep.hasKey "str": refDep["str"].getStr else: "")
  let depName = cudfPkgName(refDep["name"].getStr, depStr)

  if verKind == "verAny":
    return depName & " >= 1"

  if verKind == "verSpecial":
    # TODO: this isn't correct
    # We don't add heads to CUDF :-/
    return depName & " >= 1"

  if verKind in @["verIntersect", "verTilde", "verCaret"]:
    return cudfDep(%* {
      "name": %* depName,
      "ver": {
        "kind": refDep["ver"]["verILeft"]["kind"],
        "ver":  refDep["ver"]["verILeft"]["ver"]
      }
    }) & ", " & cudfDep(%* {
      "name": %* depName,
      "ver": {
        "kind": refDep["ver"]["verIRight"]["kind"],
        "ver":  refDep["ver"]["verIRight"]["ver"]
      }
    })

  let verNum = refDep["ver"]["ver"].getStr
  let verOp  =
    case verKind
      of "verLater": ">"
      of "verEarlier": "<"
      of "verEqLater": ">="
      of "verEqEarlier": "<="
      else: "="

  return fmt"{depName} {verOp} {verNum.semVerToInt}"


proc cudfDeps(refMeta: JsonNode): string =
  if not refMeta.hasKey("requires"):
    return ""

  let required = refMeta["requires"]
    .items
    .toSeq
    .filterIt(
      it.hasKey("name") and
      it["name"].getStr.strip(chars = AllChars - IdentChars) notin ["nim", "nimrod"])
  if required.len == 0:
    return ""

  let deps = required.map(cudfDep).join(", ")
  return '\n' & fmt"depends:  {deps}"


proc cudf(pkgMeta: JsonNode): string =
  result = ""
  if not pkgMeta.hasKey "cudf":
    let pkgName = pkgMeta["name"].getStr.cudfPkgName
    pkgMeta["cudf"] = %* {
      "name":    %* pkgName,
      "version": newJObject(),
    }

  for (refNam, refMeta) in pkgMeta["refs"].pairs:
    if refNam.contains("refs/tag") and refMeta.hasKey("version"):
      let version = refMeta["version"].getStr.semVerToInt
      let pkgName = refMeta["name"].getStr.cudfPkgName()
      pkgMeta["cudf"]["version"][$version] = %* refNam
      result.add fmt"""
package:  {pkgName}
version:  {version}{refMeta.cudfDeps}


"""
  if result == "" and pkgMeta["refs"].hasKey("HEAD") and pkgMeta["refs"]["HEAD"].hasKey("version"):
    let refMeta = pkgMeta["refs"]["HEAD"]
    let version = refMeta["version"].getStr.semVerToInt
    let pkgName = refMeta["name"].getStr.cudfPkgName
    pkgMeta["cudf"]["version"][$version] = %* "HEAD"
    result.add fmt"""
package:  {pkgName}
version:  {version}{refMeta.cudfDeps}


"""


if stdin.isATTY:
  echo """Expect a json from stdin"""
  quit 1

let
  inputJson = stdin.readAll
  pkg       = inputJson.parseJson
  metaDir   = fmt"../{pkg.dirOf}"
  relative  = metaDir.replace("../pkgsRev/", "./")

pkg["refs"] = newJObject()
discard pkg["url"]
  .getRefs
  .filter(isNotNull)
  .map(fetchInfo pkg)
  .map(setRefs pkg)

discard  fmt"mkdir -p {metaDir}".execCmdEx
fmt"{metaDir}/meta.cudf".writeFile pkg.cudf
fmt"{metaDir}/meta.json".writeFile pkg.pretty
fmt"{metaDir}/glue.nix".writeFile  fmt"""
{{
  {pkg["cudf"]["name"]} = "{relative}/meta.json";
}}
"""
