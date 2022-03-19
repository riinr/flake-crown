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

echo "Compiling updatePkg.nim"
exec "./updatePkg.nim &>/dev/null || true"


proc waitUpdatePkgs(maxProcs: int) =
  let query = "ps h -C .updatePkg -o pid"
  while gorge(query).split("\n").len > maxProcs:
    exec "sleep 0.05"

for pkg in pkgItems:
  waitUpdatePkgs(10)
  if pkg.hasKey("url") and "git" == pkg["method"].getStr:
    let pkgJSON = $pkg
    echo fmt"""Running {pkg["name"]}"""
    exec(fmt"echo {pkgJSON.quoteShell}|./updatePkg.nim &")

waitUpdatePkgs(1)


