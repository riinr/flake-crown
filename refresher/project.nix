let 
  GLOB        = "$PRJ_ROOT/../nimpkgs";
  GLOB_CACHES = "*.{json,lock}";
  GLOB_HEAD   = "${GLOB}/*/*/[a-zA-Z_][a-zA-Z_]*";
  GLOB_PROJS  = "${GLOB}/*/*";
  GLOB_TAG    = "${GLOB}/*/*/[0-9vV][0-9_]*";
in
{
  imports = [ ./packages_other.nix ];
  files.cmds.gcc              = true;
  files.cmds.git              = true;
  files.cmds.jq               = true;
  files.cmds.nim-unwrapped    = true;
  files.cmds.nimble-unwrapped = true;
  files.cmds.yj               = true;
  files.alias.bin-results     = "find -L ${GLOB_PROJS} -type f -wholename '*/bin/*'";
  files.alias.pkg-descr       = "cat `pkg-dir $1`/meta.json|jq '.description'";
  files.alias.pkg-dir         = "echo ${GLOB}/`echo $1|cut -c1`/$1";
  files.alias.pkg-versions    = "find `pkg-dir $1`/*/ -type d|grep -v .git";
  files.alias.pkg-deps        = 
    ''
      cat `pkg-dir $1`/*/meta.json|\
      jq -r '(.requires ? []).name' 2>/dev/null|sort -u
    '';
  files.alias.pkg-dependants  = 
    ''
      grep -ri $1 ${GLOB_PROJS}/*/flake.nix|cut -d':' -f1|\
        awk -F'/' '{print $(NF-2)}'|sort -u
    '';
  files.alias.pkgs            = "find ${GLOB}/*/* -maxdepth 0|awk -F/ '{print $NF}'";
  files.alias.pkgs-update     = "$PRJ_ROOT/updatePkgs.nims $@";
  files.alias.pkgs-weights    = "$PRJ_ROOT/depWeight.nim ${GLOB_PROJS}/*/meta.json";
  files.alias.rm-cache        = "rm ${GLOB_PROJS}/${GLOB_CACHES}";
  files.alias.rm-cache-head   = "rm ${GLOB_HEAD}/${GLOB_CACHES}";
  files.alias.rm-cache-tags   = "rm ${GLOB_TAG}/${GLOB_CACHES}";
  files.alias.rm-result       = "rm ${GLOB_PROJS}/result";
  files.alias.rm-result-head  = "rm ${GLOB_HEAD}/result";
  files.alias.rm-result-tags  = "rm ${GLOB_TAG}/result";
  files.alias.count-versions  = 
    ''
      find ${GLOB_PROJS}/*/ -name flake.nix|\
        awk -F, '{print $1}'|\
        xargs dirname|\
        xargs dirname|\
        sed 's#${GLOB}/##'|\
        uniq -c
    '';
  files.alias.count-versions-initials = 
    ''
      find ${GLOB_PROJS}/*/ -name flake.nix|\
        awk -F, '{print $1}'|\
        xargs dirname|\
        xargs dirname|\
        xargs dirname|\
        sed 's#${GLOB}/##'|\
        uniq -c
    '';
  files.alias.count-weights   = 
    ''
      pkgs-weights|\
        awk -F, '{print $1}'|\
        sort|\
        uniq -c
    '';
  files.alias.count-initials  =
    ''
      find ${GLOB}/*/ -maxdepth 1 -mindepth 1 -type d |\
        awk -F'/' '{print $(NF-1)}'|\
        uniq -c|\
        sort -h
    '';
  files.alias.count-contributions =
    ''
      grep '"url"' nimpkgs/*/*/meta.json|\
        awk '{print $3}'|\
        tr -d '"'|\
        sed "s#git@##"|\
        sed 's#.com:#.com/#'|\
        sed -E 's#[^:]+://##'|\
        sort -u|\
        awk -F'/' '{print $2}'|\
        sort|\
        uniq -c
    '';
}
