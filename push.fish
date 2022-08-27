#!/usr/bin/env fish
set INIT_DIR $PWD
for l in $PWD/nimpkgs/*/
  echo commiting (basename $l)
  for i in $l/*/
    if test (count (jobs)) -lt 5
      sleep 0.0(random 1 9)
      git status --porcelain || echo $i failed
      if test (git status --porcelain|grep -v 'result'|wc -l) -gt 0
        echo "###############################"
        echo Commit $i
        git add */flake.{lock,nix}
        git add */meta.json
        git add flake.{lock,nix}
        git add meta.json
        git commit -m 'feat(nimpkgs): update lock' .|cat
      end
      git diff --stat --cached origin/master||echo $i failed
      if test (git diff --stat --cached origin/master|wc -l) -gt 0
        echo Push $PWD
        git push --set-upstream origin master &
      end
    else
      wait # to wait for _any_ job
    end
  end
end
wait
cd $INIT_DIR
