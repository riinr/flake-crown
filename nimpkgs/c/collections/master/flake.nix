{
  description = ''Various collections and utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-collections-master.flake = false;
  inputs.src-collections-master.ref   = "refs/heads/master";
  inputs.src-collections-master.owner = "zielmicha";
  inputs.src-collections-master.repo  = "collections.nim";
  inputs.src-collections-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-collections-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-collections-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}