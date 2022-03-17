#!../nimpkgs/n/nimcr/result/bin/nimcr

import std/[json, strformat, strutils, os, osproc, sequtils]

for i in 1..paramCount():
  let 
    metaPath = paramStr(i)
    metaJson = metaPath.parseFile
    deps =
      if metaJson.hasKey "requires":
        metaJson["requires"].items.toSeq.filterIt(
          it["name"].getStr != "nim" and
          it["name"].getStr != "nimrod"
        ).mapIt("--update-input " & it["name"].getStr.toLower)
      else: @[]
    cmd = "nix flake lock " & deps.join " "
  echo metaPath
  if deps.len > 0:
    echo cmd
    let (o, e) = execCmdEx fmt"""
      cd `dirname {metaPath}`
      {cmd}
      # git add .
      # git commit -m "chore: update lock" \
      #   && \
      # git push || true
    """
    echo fmt"{e} {o}"

echo paramCount()
