{
  description = ''Deprecated module for vector/matrices operations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-basic3d-master.flake = false;
  inputs.src-basic3d-master.owner = "nim-lang";
  inputs.src-basic3d-master.ref   = "refs/heads/master";
  inputs.src-basic3d-master.repo  = "basic3d";
  inputs.src-basic3d-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-basic3d-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-basic3d-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}