import std/[
  json,
  os,
  osproc,
  sequtils,
  strformat,
  strutils,
  terminal,
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
    nameNN  = nameLo.replace("nim-", "")
    parts   = pkg["url"].getStr.split "?"
    url     = parts[0]
    subDir  =
      if parts.len == 2 and parts[1].contains "subdir=":
        parts[1].split("=")[1] & "/"
      else:
        ""
  if url.contains "github.com":
    let prefix = url.replace(".git", "")
      .replace("ssh+git@github.com:", "https://raw.githubusercontent.com/")
      .replace("git@github.com:", "https://raw.githubusercontent.com/")
      .replace("//github.com/", "//raw.githubusercontent.com/")
      .strip(chars = {'/'})
    return @[
      fmt"{prefix}/{gitRef}/{subDir}{name}.nimble",
      fmt"{prefix}/{gitRef}/{subDir}{nameLo}.nimble",
      fmt"{prefix}/{gitRef}/{subDir}{nameNN}.nimble"
    ]
  if url.contains "git.sr.ht":
    return @[
      fmt"{url}/blob/{gitRef}/{subDir}{name}.nimble",
      fmt"{url}/blob/{gitRef}/{subDir}{nameLo}.nimble",
      fmt"{url}/blob/{gitRef}/{subDir}{nameNN}.nimble"
    ]
  if url.contains "gitlab.com":
    let 
      tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
      prefix = url.replace(".git", "")
    return @[
      fmt"{prefix}/-/raw/{tag}/{subDir}{name}.nimble",
      fmt"{prefix}/-/raw/{tag}/{subDir}{nameLo}.nimble",
      fmt"{prefix}/-/raw/{tag}/{subDir}{nameNN}.nimble"
    ]
  let 
    tag    = gitRef.replace("refs/heads/", "").replace("refs/tags/", "")
    prefix = url.replace(".git", "")
  return @[
    fmt"{prefix}/raw/{tag}/{subDir}{name}.nimble",
    fmt"{prefix}/raw/{tag}/{subDir}{nameLo}.nimble",
    fmt"{prefix}/raw/{tag}/{subDir}{nameNN}.nimble"
  ]


proc refName(refInfo: JsonNode): string =
  refInfo["ref"].getStr
    .replace("refs/heads/", "")
    .replace("refs/tags/",  "")
    .replace(".", "_")


proc fetchInfo(pkg: JsonNode): auto =
  return proc(gitRef: string): JsonNode =
    let
      name      = pkg["name"].getStr
      nameLo    = pkg["name"].getStr.toLower
      urls      = pkg.staticUrl gitRef
      tmpDir    = fmt"/tmp/nimpkgs/{nameLo}/{gitRef}"
      flakeName = refName(%*{ "ref": gitRef })
      flakeDir  = fmt"../nimpkgs/{nameLo[0]}/{nameLo}/{flakeName}"
      refV      = gitRef.replace("refs/",  "")
                        .replace("heads/", "#")
                        .replace("tags/v", "")
                        .replace("tags/",  "")

    if fileExists fmt"{flakeDir}/meta.json":
      # echo fmt"Cache {flakeDir}/meta.json"
      return fmt"{flakeDir}/meta.json".readFile.parseJson

    
    createDir tmpDir
    # echo fmt"Downloading {name}@{gitRef}"
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
      flakeName    = refInfo.refName
      flakeDir     = fmt"../nimpkgs/{nameLo[0]}/{nameLo}/{flakeName}"

    createDir flakeDir
    fmt"{flakeDir}/meta.json".writeFile refInfo.pretty


proc projectMeta(pkg: JsonNode): auto =
  let 
    nameLo       = pkg["name"].getStr.toLower
    flakeDir     = fmt"{nameLo[0]}/{nameLo}"

  createDir fmt"../nimpkgs/{flakeDir}"
  fmt"../nimpkgs/{flakeDir}/meta.json".writeFile pkg.pretty
  discard execCmd fmt"""
    cd ../nimpkgs/{flakeDir};
    git init &>/dev/null
    printf "result\n*/result\n" > .gitignore
    git add .
    git status -s --porcelain|wc -l|grep -qE '[1-9]' && \
      git commit -m "chore: re index {nameLo}" . &>/dev/null \
        || true
    git remote -v | wc -l | grep -q '0' \
      &&
    gh repo create nim-nix-pkgs/{nameLo}                \
      --description "Automatic nix flake of {nameLo}"   \
      --disable-issues                                  \
      --disable-wiki                                    \
      --homepage=https://github.com/riinr/flake-nimble  \
      --public                                          \
      --push                                            \
      --remote=origin                                   \
      --source=.                                        \
      || true
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
