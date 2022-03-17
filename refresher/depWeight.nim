#!/usr/bin/env nimcr
#nimcr-args c

import std/[json, strformat, strutils, tables, hashes, os, osproc, sequtils, sets]

type
  Package = string
  Dependency = Package
  Dependencies = HashSet[Dependency]
  Links = TableRef[Package, Dependencies]
  Paths = TableRef[Package, string]
  Weights = TableRef[Package, Natural]
  Weight = Natural

proc link(links: Links; package: Package; dependencies: Dependencies): void =
  for dependency in dependencies:
    if dependency notin links:
      links[dependency] = Dependencies()
  links[package] = links.mgetOrPut(package, Dependencies()) + dependencies

proc newLinks(paths: Paths): Links =
  result = newTable[Dependency, Dependencies]()

  for i in 1..paramCount():
    let 
      path = paramStr i
      meta = path.parseFile
      package = meta["name"].getStr.toLower
      requires =
        if meta.hasKey "requires": meta["requires"]
        else: newJArray()
      dependencies = requires.items.toSeq
        .mapIt(it["name"].getStr.toLower)
        .filterIt(it notin ["nim", "nimrod"] and not it.startsWith "https:")
        .toHashSet
    paths[package] = path
    result.link package, dependencies

proc mass(weight: Weights, dependencies: Dependencies, links: Links): Natural

proc mass(weight: Weights; package: Package; links: Links): Natural =
  result = weight.mgetOrPut(package, 0)
  if result > 0:
    return result
  
  let dependencies = links[package]
  result = result + weight.mass(dependencies, links)
  weight[package] = result

proc mass(weight: Weights, dependencies: Dependencies, links: Links): Natural =
  result = dependencies.len
  for dependency in dependencies:
    result = result + weight.mass(dependency, links)

proc main() =
  let paths = newTable[Package, string]()
  let weight = newTable[Package, Natural]()
  let links = newLinks(paths)
  for package, path in paths.pairs:
    let size = weight.mass(package, links)
    echo fmt"{size:04},{package},{path}"

main()
