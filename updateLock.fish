#!/usr/bin/env fish

set MAX_DEPENDENCIES $argv[1]
set MAX_PARALLEL 4
set PKGS $argv

set CHANGES (echo "$PKGS"|xargs dirname|sort -u)
set PRJLCKS (echo "$PKGS"|xargs dirname|sort -u)

while test (count $PKGS) -gt 0
  sleep 0.0(random 1 9)
  if test (count (jobs)) -ge $MAX_PARALLEL
    continue
  end

  set NEXT_PKG $PKGS[1]
  set PKG_VERSION (basename (dirname $NEXT_PKG))/(basename $NEXT_PKG)
  echo (count $PKGS), $PKG_VERSION
  switch $NEXT_PKG
  case "*_*" 
    # tags aren't supposed to change
    nix flake lock $NEXT_PKG &
  case '*'
    # branches changes every time
    nix flake lock --recreate-lock-file $NEXT_PKG &
  end

  set PKGS $PKGS[2..-1]
end
wait

while test (count $PRJLCKS) -gt 0
  sleep 0.0(random 1 9)
  if test (count (jobs)) -ge $MAX_PARALLEL
    continue
  end
  set NEXT_PKG $PRJLCKS[1]
  cd $NEXT_PKG

  echo (count $PRJLCKS), $NEXT_PKG
  nix flake lock --recreate-lock-file $NEXT_PKG &
  sleep 0.0(random 1 9)
  set PRJLCKS $PRJLCKS[2..-1]
end
wait

while test (count $CHANGES) -gt 0
  sleep 0.0(random 1 9)
  if test (count (jobs)) -ge $MAX_PARALLEL
    continue
  end
  set NEXT_PKG $CHANGES[1]
  cd $NEXT_PKG

  echo Commit (basename $NEXT_PKG)
  sleep 0.0(random 1 9)
  if test (git status --porcelain|grep -v 'result'|wc -l) -gt 0
    echo "###############################"
    echo $NEXT_PKG
    git add */{flake,meta}.{lock,nix,json}
    git add {flake,meta}.{lock,nix,json}
    git commit -m 'feat(nimpkgs): remove lock' .
  end
  if test (git diff --stat --cached origin/master|wc -l) -gt 0
    git push &
  end
  set CHANGES $CHANGES[2..-1]
end
wait
