#!/usr/bin/env fish

./updatePackagesCudf.fish && ./updatePackagesNix.fish
git status -s|grep ' M '               |awk '{print $2}'|xargs git add
git status -s|grep -v ' \.\.'|grep '??'|awk '{print $2}'|xargs git add
git commit -m 'chore (pkgsRev): pkgs reindex '(date -I)
