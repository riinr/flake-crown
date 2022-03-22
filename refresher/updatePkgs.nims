#!/usr/bin/env -S nim --hints:off

import std/[algorithm, strformat, json, strutils, sequtils, os]

var 
  startAt = '0'
  endAt = 'z'

if paramCount() > 2:
  startAt = paramStr(3)[0]
  if paramCount() > 3:
    endAt = paramStr(4)[0]
  else:
    endAt = startAt

echo "Fetching packages.json"

let
  pkgsURL = "https://raw.githubusercontent.com/nim-lang/packages/master/packages.json"
  pkgsJSON = gorge fmt"curl -s {pkgsURL}|jq '.|=sort_by(.name|ascii_downcase)'"
  pkgs = parseJson pkgsJSON
  pkgItems = pkgs.items.toSeq
    .filterIt(it{"name"}.getStr.toLower[0] >= startAt)
    .filterIt(it{"name"}.getStr.toLower[0] <= endAt)

proc maxRunning(cmd: string, maxProcs: int) =
  let query = fmt"ps h -C .{cmd} -o pid"
  while gorge(query).split("\n").len > maxProcs + 1:
    exec "sleep 0.05"

proc preCompile(cmd: string) =
  echo "Compiling {cmd}.nim"
  exec fmt"./{cmd}.nim || true"

proc run(cmd: string) =
  defer: maxRunning cmd, 0
  preCompile cmd
  for pkg in pkgItems:
    maxRunning cmd, 8
    if pkg.hasKey("url") and "git" == pkg["method"].getStr:
      let pkgJSON = $pkg
      exec "sleep 0.23"
      echo fmt"""Running {cmd} for {pkg["name"]}"""
      exec(fmt"echo {pkgJSON.quoteShell}|./{cmd}.nim &")


run "updateMeta"

run "updateFlake"

