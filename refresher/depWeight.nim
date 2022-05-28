import std/[
  hashes,
  json,
  os,
  osproc,
  posix,
  sequtils,
  sets,
  strformat,
  strutils,
  tables,
]


type
  Package      = string
  Dependency   = Package
  Dependencies = HashSet[Dependency]
  Links        = TableRef[Package, Dependencies]
  Paths        = TableRef[Package, string]
  Weights      = TableRef[Package, Natural]
  Weight       = Natural


using
  dependencies: Dependencies
  links       : Links
  package     : Package
  paths       : Paths
  weight      : Weight
  weights     : Weights


proc link*(links; package; dependencies): void =
  for dependency in dependencies:
    if dependency notin links:
      links[dependency] = Dependencies()
  links[package] = links.getOrDefault(package, Dependencies()) + dependencies


proc newLinks*(paths): Links =
  result = newTable[Dependency, Dependencies]()

  for i in 1..paramCount():
    let 
      path      = paramStr i
      meta      = path.parseFile
      package   = meta["name"].getStr.toLower
      requires  =
        if meta.hasKey "requires": meta["requires"]
        else: newJArray()
      dependencies = requires.items.toSeq
        .mapIt(it["name"].getStr.toLower)
        .filterIt(it notin ["nim", "nimrod"] and not it.startsWith "https:")
        .toHashSet
    paths[package] = $path.dirname.dirname
    result.link package, dependencies


proc mass*(weights; dependencies; links): Natural


proc mass*(weights; package; links): Natural =
  result = weights.mgetOrPut(package, 0)
  if result > 0:
    return result
  
  let dependencies = links[package]
  result = result + weights.mass(dependencies, links)
  weights[package] = result


proc mass*(weights; dependencies; links): Natural =
  result = dependencies.len
  for dependency in dependencies:
    result = result + weights.mass(dependency, links)


proc main*() =
  let
    paths  = newTable[Package, string]()
    weight = newTable[Package, Natural]()
    links  = newLinks(paths)

  for package, path in paths.pairs:
    let size = weight.mass(package, links)
    echo fmt"{size:04},{package},{path}"


if isMainModule:
  main()
