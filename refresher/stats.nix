{
  files.alias.binary-list=
    ''
      jq -r 'select(.binDir != "" and .binDir != null or (.bin != null and .bin != []))|.name' $PRJ_ROOT/../nimpkgs/*/*/*/meta.json|uniq
    '';
  files.alias.save-stats =
    ''
      date -I                     > $PRJ_ROOT/../stats/last-update-at.txt
      echo "versions,pkg"         > $PRJ_ROOT/../stats/versions-count.csv
      count-versions              >> $PRJ_ROOT/../stats/versions-count.csv
      echo "versions,letter"      > $PRJ_ROOT/../stats/versions-initials-count.csv
      count-versions-initials     >> $PRJ_ROOT/../stats/versions-initials-count.csv
      echo "weight,count"         > $PRJ_ROOT/../stats/dep-weights-count.csv
      count-weights               >> $PRJ_ROOT/../stats/dep-weights-count.csv
      echo "count,letter"         > $PRJ_ROOT/../stats/initials-count.csv
      count-initials              >> $PRJ_ROOT/../stats/initials-count.csv
      echo "count,author"         > $PRJ_ROOT/../stats/contributions-count.csv
      count-contributions         >> $PRJ_ROOT/../stats/contributions-count.csv
      echo "weight,pkg"           > $PRJ_ROOT/../stats/dep-weights.csv
      pkgs-weights|cut -d, -f1,2  >> $PRJ_ROOT/../stats/dep-weights.csv
      pkgs-dots                   > $PRJ_ROOT/../stats/pkgs.dot
      pkgs-graph                  > $PRJ_ROOT/../stats/pkgs.mermaid
      binary-list                 > $PRJ_ROOT/../stats/executables.csv
    '';
  files.text."/stats/README.md"  = 
    ''
      # Nim packages stats

      Here are some stats of those pkgs.

      - [contributions-count.csv](./contributions-count.csv): count pkgs by owner
      - [dep-weights-count.csv](./dep-weights-count.csv): count pkgs by weight
      - [dep-weights.csv](./dep-weights.csv): sum all pkgs requirements
      - [executables.csv](./executables.csv): list of executables pkgs
      - [initials-count.csv](./initials-count.csv): count pkgs by initial letter
      - [pkgs.dot](./pkgs.dot): graphviz dot file for future vizualizaitons
      - [versions-count.csv](./versions-count.csv): count versions by pkg
      - [versions-initials-count.csv](./versions-initials-count.csv): count versions by letter
      

      Last update at ${builtins.readFile ../stats/last-update-at.txt}
    '';
}