#!/usr/bin/env fish
for l in $PWD/nimpkgs/*/
  echo commiting (basename $l)
  for i in $l/*/
    if test (count (jobs)) -lt 5
      cd $i
      sleep 0.0(random 1 9)
      if test (git status --porcelain|grep -v 'result'|wc -l) -gt 0
        echo "###############################"
        echo Commit $i
        git add */{flake,meta}.{lock,nix,json}
        git add {flake,meta}.{lock,nix,json}
        git commit -m 'feat(nimpkgs): update lock' .
      end
      if test (git diff --stat --cached origin/master|wc -l) -gt 0
        echo Push $PWD
        git push &
      end
    else
      wait # to wait for _any_ job
    end
  end
end
wait
cd ~/Code/flake-nimble/nimpkgs/
