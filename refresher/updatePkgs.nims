#!/usr/bin/env -S nim --hints:off -d:process

import std/[algorithm, strformat, json, strutils, sequtils, os]


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
      exec(fmt"echo {pkgJSON.quoteShell}|./{cmd}.nim &")


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
    pkgsJSON = gorge fmt"curl -s {pkgsURL}|jq '.|=sort_by(.name|ascii_downcase)'"
 
    pkgs = parseJson pkgsJSON
    pkgItems = pkgs.items.toSeq
      .filterIt(it{"name"}.getStr.toLower == pkgEq or pkgEq == "")
      .filterIt(it{"name"}.getStr.toLower[0] >= startAt)
      .filterIt(it{"name"}.getStr.toLower[0] <= endAt)

  pkgItems.run "updateMeta"
  pkgItems.run "updateFlake"

