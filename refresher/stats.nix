{
  files.alias.binary-list=
    ''
      jq -r 'select(.binDir != "" and .binDir != null or (.bin != null and .bin != []))|.name' $PRJ_ROOT/../nimpkgs/*/*/*/meta.json|uniq
    '';
  files.alias.update-sts =
    ''
      date -I                     >  $PRJ_ROOT/../stats/last-update-at.txt
      echo "versions,pkg"         >  $PRJ_ROOT/../stats/versions-count.csv
      count-versions              >> $PRJ_ROOT/../stats/versions-count.csv
      echo "versions,letter"      >  $PRJ_ROOT/../stats/versions-initials-count.csv
      count-versions-initials     >> $PRJ_ROOT/../stats/versions-initials-count.csv
      echo "weight,count"         >  $PRJ_ROOT/../stats/dep-weights-count.csv
      count-weights foward        >> $PRJ_ROOT/../stats/dep-weights-count.csv
      echo "weight,count"         >  $PRJ_ROOT/../stats/tnuoc-sthgiew-ped.csv
      count-weights backward      >> $PRJ_ROOT/../stats/tnuoc-sthgiew-ped.csv
      echo "count,letter"         >  $PRJ_ROOT/../stats/initials-count.csv
      count-initials              >> $PRJ_ROOT/../stats/initials-count.csv
      echo "count,author"         >  $PRJ_ROOT/../stats/contributions-count.csv
      count-contributions         >> $PRJ_ROOT/../stats/contributions-count.csv
      echo "weight,pkg"           >  $PRJ_ROOT/../stats/dep-weights.csv
      pkgs-weights f|cut -d, -f1,2>> $PRJ_ROOT/../stats/dep-weights.csv
      echo "weight,pkg"           >  $PRJ_ROOT/../stats/sthgiew-ped.csv
      pkgs-weights backward|cut -d, -f1,2>> $PRJ_ROOT/../stats/sthgiew-ped.csv
      pkgs-dots    foward         >  $PRJ_ROOT/../stats/pkgs.dot
      pkgs-dots    backward       >  $PRJ_ROOT/../stats/sgkp.dot
      pkgs-graph   foward         >  $PRJ_ROOT/../stats/pkgs.mermaid
      pkgs-graph   backward       >  $PRJ_ROOT/../stats/sgkp.mermaid
      pkgs-mindmap foward         >  $PRJ_ROOT/../stats/pkgs.mindmap
      pkgs-mindmap backward       >  $PRJ_ROOT/../stats/sgkp.mindmap
      binary-list                 >  $PRJ_ROOT/../stats/executables.csv
    '';
  files.text."/../stats/README.md"  = 
    ''
      # Nim packages stats

      Here are some stats of those pkgs.

      - [contributions-count.csv](./contributions-count.csv): count pkgs by owner
      - [dep-weights.csv](./dep-weights.csv): sum pkg requirements
      - [sthgiew-ped.csv](./sthgiew-ped.csv): dep-weights reversed
      - [dep-weights-count.csv](./dep-weights-count.csv): count pkgs by weight
      - [tnuoc-sthgiew-ped.csv](./tnuoc-sthgiew-ped.csv): dep-weights-count reversed
      - [executables.csv](./executables.csv): list of executables pkgs
      - [initials-count.csv](./initials-count.csv): count pkgs by initial letter
      - [pkgs.dot](./pkgs.dot): graphviz dot file for vizualizaitons
      - [sgkp.dot](./sgkp.dot): pkgs.dot reversed
      - [pkgs.mindmap](./pkgs.mindmap): plantuml file for vizualizaitons
      - [sgkp.mindmap](./sgkp.mindmap): pkgs.mindmap reversed
      - [versions-count.csv](./versions-count.csv): count versions by pkg
      - [versions-initials-count.csv](./versions-initials-count.csv): count versions by letter
      

      Last update at ${builtins.readFile ../stats/last-update-at.txt}
    '';
}
