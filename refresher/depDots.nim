import std/[
  hashes,
  json,
  os,
  osproc,
  pegs,
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


using
  dependencies: Dependencies
  links       : Links
  package     : Package
  paths       : Paths


proc link*(links; package; dependencies): void =
  for dependency in dependencies:
    if dependency notin links:
      links[dependency] = Dependencies()
  links[package] = links.mgetOrPut(package, Dependencies()) + dependencies


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


let urlPeg = peg"""
  url       <- ^ protocols pathPart+ '/' {noDot+} '.'* .*
  protocols <- \ident':/'&'/'
  pathPart  <- '/' noSlash+ & '/'
  noSlash   <- !'/' .
  noDot     <- !'.' .
"""


let
  paths = newTable[Package, string]()
  links = newLinks(paths)


for package, deps in links.pairs:
  let pkgName  = package.replacef(urlPeg, "$1")
  var pkgsDeps =
    if deps.len > 0:
      deps.mapIt($it)
    else:
      @["nim"]

  for dep in pkgsDeps:
    let pkgDep = dep.replacef(urlPeg, "$1")
    echo fmt"    {pkgName} -> {pkgDep}"

