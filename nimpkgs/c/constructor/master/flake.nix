{
  description = ''Nim macros to aid in object construction including event programming, and constructors.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-constructor-master.flake = false;
  inputs.src-constructor-master.owner = "beef331";
  inputs.src-constructor-master.ref   = "refs/heads/master";
  inputs.src-constructor-master.repo  = "constructor";
  inputs.src-constructor-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-constructor-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-constructor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}