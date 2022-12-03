import std/[
  json,
  os,
  osproc,
  sequtils,
  strformat,
  strutils,
  terminal,
  uri,
]

proc isTag(x: string): bool =
  x.startsWith "refs/tags"

proc isHead(x: string): bool =
  x.startsWith("refs/heads") and (
    x.endsWith("/master")    or 
    x.endsWith("/main")      or
    x.endsWith("/trunk")     or
    x.endsWith("/staging")   or 
    x.endsWith("/unstable")  or
    x.endsWith("/devel")     or
    x.endsWith("/develop")
  )

const GIT_CMD = """git -c credential.helper='' -c credential.helper='!printf quit=1'"""

proc isKey(x: string): auto =
  return proc (refInfo: JsonNode): bool =
    refInfo.hasKey x


proc getRefs(url: JsonNode): seq[string] =
  let
    parts  = url.getStr.split "?"
    projUrl = parts[0]
    removeUnwanted  = "|grep -v gh-pages|grep -v '{}'"
    removeHash      = "|cut -f 2"
    lsRemote        = fmt"{GIT_CMD} ls-remote --head --tags "
    listTags        = fmt"{lsRemote} {projUrl} {removeUnwanted} {removeHash}"
  execCmdEx(listTags).output.split "\n"


proc staticUrl(pkg: JsonNode, gitRef: string): seq[string] =
  let
    sources = @["github", "gitlab", "sourcehut", "bitbucket"]
    name    = block:
      let 
        tmpName   = pkg["name"].getStr
        nameParts = tmpName.split("-")
      if nameParts.len >= 3 and nameParts[0] in sources:
        nameParts[2 .. ^1].join("-")
      else:
        tmpName
    nameLo  = name.toLower
    alias   =
      if pkg.hasKey "alias":
        pkg["alias"].getStr
      else:
        nameLo
    nameNN  = nameLo.replace("nim-", "")
    uri     = pkg["url"].getStr.replace(".com:", ".com/").replace("git@", "https://").parseUri
    pth     = uri.path.replace(".git", "").strip(chars={'/'})
    subDir  =
      if uri.query.contains "subdir=":
        decodeQuery(uri.query).toSeq[0][1] & "/"
      else:
        ""

  if uri.hostname.contains "github.com":
    return @[
      fmt"https://raw.githubusercontent.com/{pth}/{gitRef}/{subDir}nimble.lock",
      fmt"https://raw.githubusercontent.com/{pth}/{gitRef}/{subDir}{name}.nimble",
      fmt"https://raw.githubusercontent.com/{pth}/{gitRef}/{subDir}{nameLo}.nimble",
      fmt"https://raw.githubusercontent.com/{pth}/{gitRef}/{subDir}{nameNN}.nimble",
      fmt"https://raw.githubusercontent.com/{pth}/{gitRef}/{subDir}{alias}.nimble",
    ]
  if uri.hostname.contains "git.sr.ht":
    return @[
      fmt"https://git.sr.th/{pth}/blob/{gitRef}/{subDir}nimble.lock",
      fmt"https://git.sr.th/{pth}/blob/{gitRef}/{subDir}{name}.nimble",
      fmt"https://git.sr.th/{pth}/blob/{gitRef}/{subDir}{nameLo}.nimble",
      fmt"https://git.sr.th/{pth}/blob/{gitRef}/{subDir}{nameNN}.nimble",
      fmt"https://git.sr.th/{pth}/blob/{gitRef}/{subDir}{alias}.nimble",
    ]
  if uri.hostname.contains "gitlab.com":
    let 
      tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
    return @[
      fmt"https://gitlab.com/{pth}/-/raw/{tag}/{subDir}nimble.lock",
      fmt"https://gitlab.com/{pth}/-/raw/{tag}/{subDir}{name}.nimble",
      fmt"https://gitlab.com/{pth}/-/raw/{tag}/{subDir}{nameLo}.nimble",
      fmt"https://gitlab.com/{pth}/-/raw/{tag}/{subDir}{nameNN}.nimble",
      fmt"https://gitlab.com/{pth}/-/raw/{tag}/{subDir}{alias}.nimble",
    ]
  if uri.hostname.contains "ozzuu.com":
    let 
      tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
      refTyp =
        if gitRef.contains "heads":
          "branch"
        else:
          "tag"
    return @[
      fmt"https://git.ozzuu.com/{pth}/raw/{refTyp}/{tag}/{subDir}nimble.lock",
      fmt"https://git.ozzuu.com/{pth}/raw/{refTyp}/{tag}/{subDir}{name}.nimble",
      fmt"https://git.ozzuu.com/{pth}/raw/{refTyp}/{tag}/{subDir}{nameLo}.nimble",
      fmt"https://git.ozzuu.com/{pth}/raw/{refTyp}/{tag}/{subDir}{nameNN}.nimble",
      fmt"https://git.ozzuu.com/{pth}/raw/{refTyp}/{tag}/{subDir}{alias}.nimble",
    ]
  if uri.hostname.contains "codeberg.org":
    let 
      tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
      refTyp =
        if gitRef.contains "heads":
          "branch"
        else:
          "tag"
    return @[
      fmt"https://codeberg.org/{pth}/raw/{refTyp}/{tag}/{subDir}nimble.lock",
      fmt"https://codeberg.org/{pth}/raw/{refTyp}/{tag}/{subDir}{name}.nimble",
      fmt"https://codeberg.org/{pth}/raw/{refTyp}/{tag}/{subDir}{nameLo}.nimble",
      fmt"https://codeberg.org/{pth}/raw/{refTyp}/{tag}/{subDir}{nameNN}.nimble",
      fmt"https://codeberg.org/{pth}/raw/{refTyp}/{tag}/{subDir}{alias}.nimble",
    ]
  if uri.hostname.contains "njoseph.me":
    return @[
      fmt"https://njoseph.me/{pth}.git/blob_plain/{gitRef}:/{subDir}nimble.lock",
      fmt"https://njoseph.me/{pth}.git/blob_plain/{gitRef}:/{subDir}{name}.nimble",
      fmt"https://njoseph.me/{pth}.git/blob_plain/{gitRef}:/{subDir}{nameLo}.nimble",
      fmt"https://njoseph.me/{pth}.git/blob_plain/{gitRef}:/{subDir}{nameNN}.nimble",
      fmt"https://njoseph.me/{pth}.git/blob_plain/{gitRef}:/{subDir}{alias}.nimble",
    ]
  let 
    tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
  return @[
    fmt"https://{uri.hostname}/{pth}/raw/{tag}/{subDir}nimble.lock",
    fmt"https://{uri.hostname}/{pth}/raw/{tag}/{subDir}{name}.nimble",
    fmt"https://{uri.hostname}/{pth}/raw/{tag}/{subDir}{nameLo}.nimble",
    fmt"https://{uri.hostname}/{pth}/raw/{tag}/{subDir}{nameNN}.nimble",
    fmt"https://{uri.hostname}/{pth}/raw/{tag}/{subDir}{alias}.nimble",
  ]


proc refName(refInfo: JsonNode): string =
  refInfo["ref"].getStr
    .replace("refs/heads/", "")
    .replace("refs/tags/",  "")
    .replace(".", "_")


proc dirOf(pkg: JsonNode): string =
  let 
    url  = pkg["url"].getStr.replace(".com:", ".com/").replace("git@", "https://").parseUri
    name = pkg["name"].getStr.toLower
    pth  = url.path.splitFile[0].strip(chars={'/'})
  fmt"pkgslock/{url.hostname}/{pth}/{name}"


proc fetchInfo(pkg: JsonNode): auto =
  return proc(gitRef: string): JsonNode =
    let
      name      = pkg["name"].getStr
      nameLo    = pkg["name"].getStr.toLower
      urls      = pkg.staticUrl gitRef
      tmpDir    = fmt"/tmp/{pkg.dirOf}/{gitRef}"
      flakeName = refName(%*{ "ref": gitRef })
      flakeDir  = fmt"../{pkg.dirOf}/{flakeName}"
      refV      = gitRef.replace("refs/",  "")
                        .replace("heads/", "#")
                        .replace("tags/v", "")
                        .replace("tags/",  "")

    if fileExists fmt"{flakeDir}/meta.json":
      return fmt"{flakeDir}/meta.json".readFile.parseJson

    createDir tmpDir
    echo fmt"Downloading {name}@{gitRef}"
    let curls = urls.deduplicate.mapIt(fmt"curl -f -s -O {it} &").join("\n")
    discard execCmd fmt"""
      cd {tmpDir}
      {curls}
      wait
    """

    var (versionInfo, code) = fmt"cd {tmpDir}; nimble dump --json".execCmdEx
    var firstError = versionInfo
    if code > 0:
      echo fmt"Downloading {name}@{refV} with nimble"
      (versionInfo, code) = fmt"""
        cd {tmpDir}
        nimble -y develop {name}@{refV} &> nimble.log \
          || true
        nimble dump {name} --json
      """.execCmdEx
    if code == 0:
      let info = parseJson versionInfo
      info["ref"] = %* gitRef
      return info
    else:
      echo fmt"""
Can't parse nimble file {name} from urls:
- {urls.join("\n- ")}

Direct file download error:
{firstError}

Nimble package download error:
{versionInfo}"""

    return %* {
      "description"   : pkg["description"],
      "license": pkg["license"],
      "name"   : pkg["name"],
      "ref"    : gitRef,
      "url"    : pkg["url"],
      "version": %* flakeName,
    }


proc refsMeta(pkg: JsonNode): auto =
  let 
    nameLo      = pkg["name"].getStr.toLower
    refs        = pkg["heads"].items.toSeq & pkg["tags"].items.toSeq

  for refInfo in refs:
    let 
      flakeName = refInfo.refName
      gitRef    = refInfo["ref"].getStr
      flakeDir  = fmt"../{pkg.dirOf}/{flakeName}"
      tmpDir    = fmt"/tmp/{pkg.dirOf}/{gitRef}"

    createDir flakeDir
    fmt"{flakeDir}/meta.json".writeFile refInfo.pretty
    discard execCmd fmt"""
      cp -u {tmpDir}/*.nimble {flakeDir}/ 2>/dev/null || true
      cp -u {tmpDir}/*.lock   {flakeDir}/ 2>/dev/null || true
      cd {flakedir}
      [[ ! -f nimble.lock ]] && find . -name '*.nimble' -execdir nimble-locker --silent -y lock \;
    """

proc projectMeta(pkg: JsonNode): auto =
  let 
    nameLo       = pkg["name"].getStr.toLower

  createDir fmt"../{pkg.dirOf}/"
  fmt"../{pkg.dirOf}/meta.json".writeFile pkg.pretty
  discard execCmd fmt"""
    # git init &>/dev/null
    # printf "result\n*/result\n" > .gitignore
    # git add .
    # git status -s --porcelain|wc -l|grep -qE '[1-9]' &&      \
    #   git commit -m "chore: re index {nameLo}" . &>/dev/null \
    #     || true
    # git remote -v | wc -l | grep -q '0'               \
    #   &&                                              \
    # gh repo create nim-nix-pkgs/{nameLo}              \
    #   --description "Automatic nix flake of {nameLo}" \
    #   --disable-issues                                \
    #   --disable-wiki                                  \
    #   --homepage=https://github.com/riinr/flake-crown \
    #   --public                                        \
    #   --push                                          \
    #   --remote=origin                                 \
    #   --source=.                                      \
    #   ||                                              \
    # git remote add origin                             \
    #     git@github.com:nim-nix-pkgs/{nameLo}.git 2> /dev/null
  """
  refsMeta pkg


if stdin.isATTY:
  echo """Expect a json from stdin"""
  quit 1

let
  inputJson = stdin.readAll
  pkg  = inputJson.parseJson
  refs = pkg["url"].getRefs

pkg["refs"]  = %* refs
pkg["tags"]  = %* refs.filter(isTag)
  .map(fetchInfo pkg)
  .filter "name".isKey
pkg["heads"] = %* refs.filter(isHead)
  .map(fetchInfo pkg)
  .filter "name".isKey

projectMeta pkg
