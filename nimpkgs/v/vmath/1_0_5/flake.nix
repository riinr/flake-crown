{
  description = ''Collection of math routines for 2d and 3d graphics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vmath-1_0_5.flake = false;
  inputs.src-vmath-1_0_5.owner = "treeform";
  inputs.src-vmath-1_0_5.ref   = "refs/tags/1.0.5";
  inputs.src-vmath-1_0_5.repo  = "vmath";
  inputs.src-vmath-1_0_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-1_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vmath-1_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}