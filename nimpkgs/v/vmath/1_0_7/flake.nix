{
  description = ''Collection of math routines for 2d and 3d graphics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vmath-1_0_7.flake = false;
  inputs.src-vmath-1_0_7.owner = "treeform";
  inputs.src-vmath-1_0_7.ref   = "refs/tags/1.0.7";
  inputs.src-vmath-1_0_7.repo  = "vmath";
  inputs.src-vmath-1_0_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_0_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vmath-1_0_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}