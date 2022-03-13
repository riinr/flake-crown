{
  description = ''A Quadtree implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."quadtree-master".dir   = "master";
  inputs."quadtree-master".owner = "nim-nix-pkgs";
  inputs."quadtree-master".ref   = "master";
  inputs."quadtree-master".repo  = "quadtree";
  inputs."quadtree-master".type  = "github";
  inputs."quadtree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quadtree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quadtree-0_1_0".dir   = "0_1_0";
  inputs."quadtree-0_1_0".owner = "nim-nix-pkgs";
  inputs."quadtree-0_1_0".ref   = "master";
  inputs."quadtree-0_1_0".repo  = "quadtree";
  inputs."quadtree-0_1_0".type  = "github";
  inputs."quadtree-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quadtree-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quadtree-0_2_0".dir   = "0_2_0";
  inputs."quadtree-0_2_0".owner = "nim-nix-pkgs";
  inputs."quadtree-0_2_0".ref   = "master";
  inputs."quadtree-0_2_0".repo  = "quadtree";
  inputs."quadtree-0_2_0".type  = "github";
  inputs."quadtree-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quadtree-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quadtree-0_3_0".dir   = "0_3_0";
  inputs."quadtree-0_3_0".owner = "nim-nix-pkgs";
  inputs."quadtree-0_3_0".ref   = "master";
  inputs."quadtree-0_3_0".repo  = "quadtree";
  inputs."quadtree-0_3_0".type  = "github";
  inputs."quadtree-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quadtree-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}