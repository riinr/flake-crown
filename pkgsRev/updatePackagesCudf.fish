#!/usr/bin/env fish
# Sum up all meta.cudf, created by ../refresher/updateRevs.nim
find ../pkgsRev/ -name "meta.cudf" -exec cat {} \; > ../pkgsRev/packages.cudf
