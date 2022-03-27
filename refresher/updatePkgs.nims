#!/usr/bin/env -S nim --hints:off -d:process

import std/[algorithm, strformat, json, strutils, sequtils, os]

let DEBUG = getEnv("DEBUG", "")

proc maxRunning(cmd: string, maxProcs: int) =
  let query = fmt"ps h -C .{cmd} -o pid|wc -l"
  while gorge(query).parseInt > maxProcs:
    exec "sleep 0.05"

proc preCompile(cmd: string) =
  echo fmt"Compiling {cmd}.nim"
  exec fmt"./{cmd}.nim >/dev/null || true"

proc run(pkgItems: seq[JsonNode]; cmd: string) =
  defer: maxRunning cmd, 0
  preCompile cmd
  for pkg in pkgItems:
    maxRunning cmd, 6
    if pkg.hasKey("url") and "git" == pkg["method"].getStr:
      let pkgJSON = $pkg
      exec "sleep 0.23"
      echo fmt"""Running {cmd} for {pkg["name"]}"""
      if DEBUG != "":
        echo fmt"echo {pkgJSON.quoteShell}|./{cmd}.nim &"
      exec fmt"echo {pkgJSON.quoteShell}|./{cmd}.nim &"


if defined process:
  var 
    startAt = '0'
    endAt = 'z'
    pkgEq = ""

  if paramCount() > 3:
    let argA = paramStr(4)
    startAt = argA[0]
    if argA.len > 1:
      pkgEq = argA
    if paramCount() > 4:
      endAt = paramStr(5)[0]
    else:
      endAt = startAt

  echo fmt"Fetching packages.json for {startAt}..{endAt} {pkgEq}"

  let
    pkgsURL = "https://raw.githubusercontent.com/nim-lang/packages/master/packages.json"
    prepare = gorge fmt"""
      # downloads packages.json
      cat packages_main.json 2>/dev/null \
        || curl -s {pkgsURL} \
          > packages_main.json

      # create packages_other.json
      cat packages_other.json 2>/dev/null \
        || echo "[]" \
          > packages_other.json

      # join all packages json
      cat packages_*.json | \
        jq -s '.|add' |\
        jq '.|=sort_by(.name|ascii_downcase)' \
          > packages.json

      # create name_alias
      cat packages.json | \
        jq '
          map(select(.alias != null))|
          map({{(.name|ascii_downcase): .alias}})|
          add' \
          > alias_names.json

      # create url_alias
      cat packages.json | \
        jq '
          map(select(.url != null))|
          map({{
            (.url|sub("https*://"; "")|sub("git@"; "")|sub(":"; "/")):
            .name
          }})|
          add' \
          > alias_urls.json

      # join all alias json
      cat alias_*.json | \
        jq -s '.|add' \
          > alias.json
      """

    pkgsJSON = gorge fmt"""
      cat packages.json|jq '
        map(
          select(
            (.name|ascii_downcase) == "{pkgEq}" or "{pkgEq}" == ""
            and (.name|ascii_downcase|explode)[0] >= ("{startAt}"|explode)[0]
            and (.name|ascii_downcase|explode)[0] <= ("{endAt}"|explode)[0]
          )
        )'
    """
    pkgs = parseJson pkgsJSON
    pkgItems = pkgs.items.toSeq

  pkgItems.run "updateMeta"
  pkgItems.run "updateFlake"

