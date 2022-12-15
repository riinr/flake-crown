#!/usr/bin/env fish
# Sum up all glue.nix, created by ../refresher/updateRevs.nim

cat \
    (echo "{"|psub) \
    (find ../pkgsRev/ -name "glue.nix" -exec cat {} \;|grep ';'|sort|column -t -s '=' -o '='|psub) \
    (echo "}"|psub) \
      > ../pkgsRev/packages.nix
