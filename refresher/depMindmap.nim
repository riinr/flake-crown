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


using
  dependencies: Dependencies
  links       : Links
  package     : Package


proc link*(links; package; dependencies): void =
  for dependency in dependencies:
    if dependency notin links:
      links[dependency] = Dependencies()
  links[package] = links.getOrDefault(package, Dependencies()) + dependencies


proc link*(links; dependencies; package): void =
  if package notin links:
    links[package] = Dependencies()
  for dependency in dependencies:
    if dependency notin links:
      links[dependency] = Dependencies()
    links[dependency].incl package


proc newLinks*(): Links =
  result = newTable[Dependency, Dependencies]()

  let direction = paramStr 1
  for i in 2..paramCount():
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
    if direction == "backward":
      result.link dependencies, package
    else:
      result.link package, dependencies


proc rec*(links; package; prefix = "*"): void =
  stdout.write(prefix & ' ' & package & '\n')
  for pkg in links[package].items:
    links.rec(pkg, prefix & '*')


proc main*() =
  let links  = newLinks()
  for package in links.keys:
    links.rec(package)
    stdout.write '\n'


if isMainModule:
  main()
