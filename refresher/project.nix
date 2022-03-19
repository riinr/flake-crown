let 
  GLOB        = "$PRJ_ROOT/../nimpkgs";
  GLOB_CACHES = "*.{json,lock}";
  GLOB_HEAD   = "${GLOB}/*/*/[a-zA-Z_][a-zA-Z_]*";
  GLOB_PROJS  = "${GLOB}/**";
  GLOB_TAG    = "${GLOB}/*/*/[0-9vV][0-9_]*";
in
{
  files.cmds.gcc              = true;
  files.cmds.git              = true;
  files.cmds.jq               = true;
  files.cmds.mercurial        = true;
  files.cmds.nim-unwrapped    = true;
  files.cmds.nimble-unwrapped = true;
  files.cmds.yj               = true;
  files.alias.rm-cache        = "rm ${GLOB_PROJS}/${GLOB_CACHES}";
  files.alias.rm-cache-head   = "rm ${GLOB_HEAD}/${GLOB_CACHES}";
  files.alias.rm-cache-tags   = "rm ${GLOB_TAG}/${GLOB_CACHES}";
  files.alias.rm-result       = "rm ${GLOB_PROJS}/result";
  files.alias.rm-result-head  = "rm ${GLOB_HEAD}/result";
  files.alias.rm-result-tags  = "rm ${GLOB_TAG}/esult";
}
