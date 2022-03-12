{
  description = ''Collection of math routines for 2d and 3d graphics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vmath-v0_3_0.flake = false;
  inputs.src-vmath-v0_3_0.owner = "treeform";
  inputs.src-vmath-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-vmath-v0_3_0.repo  = "vmath";
  inputs.src-vmath-v0_3_0.type  = "github";
  
  inputs."mddoc".owner = "nim-nix-pkgs";
  inputs."mddoc".ref   = "master";
  inputs."mddoc".repo  = "mddoc";
  inputs."mddoc".type  = "github";
  inputs."mddoc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mddoc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vmath-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vmath-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}