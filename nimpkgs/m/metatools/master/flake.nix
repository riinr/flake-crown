{
  description = ''Metaprogramming tools for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-metatools-master.flake = false;
  inputs.src-metatools-master.owner = "jxy";
  inputs.src-metatools-master.ref   = "master";
  inputs.src-metatools-master.repo  = "metatools";
  inputs.src-metatools-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-metatools-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-metatools-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}