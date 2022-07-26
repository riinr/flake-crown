#!/usr/bin/env fish

set WEIGHTS (
    depWeight f $PWD/nimpkgs/*/*/*/meta.json
)

for MAX_DEPENDENCIES in $argv
  set PKGS (
    echo "$WEIGHTS"|tr " " "\n"|\
      awk -F',' '$1 == '$MAX_DEPENDENCIES' {print $3}')

  if test (count $PKGS) -eq 0
    echo No packages with $MAX_DEPENDENCIES dependencies
    continue
  end

  set VERSIONS (
    find $PKGS -mindepth 2 -name flake.nix|\
    xargs dirname|sort -u|shuf
  )
  ./updateLock.fish $VERSIONS
end
