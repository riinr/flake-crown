#!/usr/bin/env nimcr
#nimcr-args c -p:$NIMBLESRC_PATH/src

import std/[
  algorithm,
  json,
  os,
  osproc,
  posix,
  sequtils,
  strformat,
  strscans,
  strutils,
  tables,
  terminal,
]

import nimblepkg/version

let ALIAS = parseFile "./alias.json"


proc refName(refInfo: JsonNode): string =
  refInfo["ref"].getStr
    .replace("refs/heads/", "")
    .replace("refs/tags/",  "")
    .replace(".", "_")


iterator projectInputs(refs: JsonNode; flakeDir: string): string =
  for refInfo in refs.items:
    let 
      gitRef = refInfo.refName
      name   = refInfo["name"].getStr.toLower
    yield fmt"""

  inputs."{name}-{gitRef}".dir   = "{gitRef}";
  inputs."{name}-{gitRef}".owner = "nim-nix-pkgs";
  inputs."{name}-{gitRef}".ref   = "master";
  inputs."{name}-{gitRef}".repo  = "{name}";
  inputs."{name}-{gitRef}".type  = "github";
  inputs."{name}-{gitRef}".inputs.nixpkgs.follows = "nixpkgs";
  inputs."{name}-{gitRef}".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  """

proc nimPkgsLibInput(): string =
  """

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  """


proc inputInfo(refName, url: string): JsonNode =
  let 
    repoInfo = url.replace("https://", "").split "/"
    domain   = repoInfo[0]
    owner    = repoInfo[1]
    parts    = repoInfo[2].replace(".git", "").split "?"
    repo     = parts[0]
    subDir =
      if parts.len == 2 and parts[1].contains "subdir=":
        parts[1].split("=")[1]
      else:
        ""
    repoType = if domain.contains "github":
                 "github"
               elif domain.contains "gitlab":
                 "gitlab"
               elif domain.contains "git.sr.ht":
                 "sourcehut"
               else:
                 "git"
    refs     = if repoType == "sourcehut":
                 refName.split("/")[^1]
               else:
                 refName
  result = %* { "type" : %* repoType }
  
  if repoType == "git":
    result["url"]   = %* fmt"git+{url}"
  else:
    result["owner"] = %* owner
    result["ref"]   = %* refs
    result["repo"]  = %* repo
    result["dir"]   = %* subDir


proc toVersionPair(dirName: string): (Version, string)=
  let
    unVName = dirName.strip(trailing = false, chars={'v'})
    hashedName = '#' & dirName
  try:
    discard unVName.replace("_", "").parseUInt
    return (unVName.replace("_", ".").newVersion, dirName)
  except ValueError:
    return (hashedName.newVersion, dirName)


proc listRefs(nameLo: string): auto =
  let files = fmt"../nimpkgs/{nameLo[0]}/{nameLo}".walkDir.toSeq
  files.filterIt(it.kind == pcDir)
      .filterIt(not it.path.endsWith ".git")
      .mapIt($it.path)


proc lastestVersion(depInfo: JsonNode): string =
  let
    nameLo = depInfo["name"].getStr.toLower
    dirs = nameLo.listRefs.mapIt($it.basename)
    versions = toOrderedTable[Version, string](
      dirs.mapIt(it.toVersionPair).sortedByIt(it[0]).reversed
    )
    reqDesc = depInfo["str"].getStr
    reqRange =
      if reqDesc == "any version":
        newVRAny()
      else:
        parseVersionRange reqDesc
  result = findLatest(reqRange, versions).tag
  if result == "":
    if reqRange.kind == verSpecial:
      let specialVer = reqRange.spe
      if versions.hasKey specialVer:
        echo fmt"""
          Unknow tag {reqRange} of {nameLo}, using last {specialVer}
        """
        return versions[specialVer]

    for key in versions.keys:
      echo fmt"""
        Unknow tag {reqRange} of {nameLo}, using last {key}
      """
      return versions[key]

iterator refInputs(refInfo: JsonNode, url: string): string =
  let 
    gitRef    = refInfo.refName
    name      = refInfo["name"].getStr
    inputInfo = refInfo["ref"].getStr.inputInfo url
    itName    = fmt"src-{name}-{gitRef}".replace(".","_")
    subDir    =
      if inputInfo.hasKey("dir") and inputInfo["dir"].getStr != "":
        fmt"""
  inputs.{itName}.dir   = "{inputInfo["dir"].getStr}";
"""
      else:
        ""
  yield fmt"""

  inputs.{itName}.flake = false;
  inputs.{itName}.ref   = "{inputInfo["ref"].getStr}";
  inputs.{itName}.owner = "{inputInfo["owner"].getStr}";
  inputs.{itName}.repo  = "{inputInfo["repo"].getStr}";
  {subDir}inputs.{itName}.type  = "{inputInfo["type"].getStr}";
  """

  if refInfo.hasKey "requires":
    for dep in refInfo["requires"].items:
      let 
        namedDep = dep["name"].getStr.toLower
            .replace("https*://", "")
            .replace("git@", "")
            .replace(":", "/")
        depName  =
          if ALIAS.hasKey namedDep:
            ALIAS[namedDep].getStr.toLower
          else:
            namedDep
        version  = dep.lastestVersion
      if depName == "nim" or  depName == "nimrod":
        continue
      if depName.startsWith "https":
        # not supported yet
        continue

      yield fmt"""

  inputs."{depName}".owner = "nim-nix-pkgs";
  inputs."{depName}".ref   = "master";
  inputs."{depName}".repo  = "{depName}";
  inputs."{depName}".dir   = "{version}";
  inputs."{depName}".type  = "github";
  inputs."{depName}".inputs.nixpkgs.follows = "nixpkgs";
  inputs."{depName}".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  """

proc refsFlake(nameLo, url: string): auto =
  for flakeDir in nameLo.listRefs:
    let
      refInfo      = fmt"{flakeDir}/meta.json".parseFile
      flakeName    = refInfo.refName
      inputs       = refInfo.refInputs(url).toSeq.join ""
      name         = refInfo["name"].getStr
      itName       = fmt"src-{name}-{flakeName}".replace(".", "_")
      description  =
        if refInfo.hasKey "description":
          refInfo["description"].getStr
        elif refInfo.hasKey "desc":
          refInfo["desc"].getStr
        else: ""
      flakeContent = fmt"""{{
  description = ''{description}'';
{nimPkgsLibInput()}{inputs}
  outputs = {{ self, nixpkgs, flakeNimbleLib, ...}}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "{itName}"];
    over = if builtins.pathExists ./override.nix 
           then {{ override = import ./override.nix; }}
           else {{ }};
  in lib.mkRefOutput (over // {{
    inherit self nixpkgs ;
    src  = deps."{itName}";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  }} );
}}"""
    createDir flakeDir
    fmt"{flakeDir}/flake.nix".writeFile flakeContent
    echo fmt"updated {flakeDir}/flake.nix"


proc projectFlake(nameLo: string): auto =
  let 
    pkgsDir      = "../nimpkgs"
    flakeDir     = fmt"{pkgsDir}/{nameLo[0]}/{nameLo}"
    pkg          = parseFile fmt"{flakeDir}/meta.json"
    description  = pkg["description"].getStr
    url          = pkg["url"].getStr
    heads        = pkg["heads"].projectInputs(flakeDir).toSeq.join ""
    tags         = pkg["tags"].projectInputs(flakeDir).toSeq.join ""
    flakeContent = fmt"""{{
  description = ''{description}'';
{nimPkgsLibInput()}{heads}{tags}
  outputs = {{ self, nixpkgs, flakeNimbleLib, ...}}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {{
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  }};
}}"""
  createDir fmt"{flakeDir}"
  fmt"{flakeDir}/flake.nix".writeFile flakeContent
  echo fmt"updated {flakeDir}/flake.nix"
  discard execCmd fmt"""
    cd {flakeDir};
    git init &>/dev/null
  """
  refsFlake nameLo, url
  discard execCmd fmt"""
    git add .
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


if stdin.isATTY:
  echo """Excpect a json with {"name": "pkgName"} from stdin"""
  quit 1

let
  inputJson = stdin.readAll
  pkg  = inputJson.parseJson
  nameLo = pkg["name"].getStr.toLower

nameLo.projectFlake
