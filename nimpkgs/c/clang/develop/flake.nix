{
  description = ''Wrapper for libclang C headers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-clang-develop.flake = false;
  inputs.src-clang-develop.owner = "samdmarshall";
  inputs.src-clang-develop.ref   = "refs/heads/develop";
  inputs.src-clang-develop.repo  = "libclang-nim";
  inputs.src-clang-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-clang-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-clang-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}