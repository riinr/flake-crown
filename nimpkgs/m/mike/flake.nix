{
  description = ''A very simple micro web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mike-master".dir   = "master";
  inputs."mike-master".owner = "nim-nix-pkgs";
  inputs."mike-master".ref   = "master";
  inputs."mike-master".repo  = "mike";
  inputs."mike-master".type  = "github";
  inputs."mike-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_0_0".dir   = "1_0_0";
  inputs."mike-1_0_0".owner = "nim-nix-pkgs";
  inputs."mike-1_0_0".ref   = "master";
  inputs."mike-1_0_0".repo  = "mike";
  inputs."mike-1_0_0".type  = "github";
  inputs."mike-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_1_0".dir   = "1_1_0";
  inputs."mike-1_1_0".owner = "nim-nix-pkgs";
  inputs."mike-1_1_0".ref   = "master";
  inputs."mike-1_1_0".repo  = "mike";
  inputs."mike-1_1_0".type  = "github";
  inputs."mike-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_2_0".dir   = "1_2_0";
  inputs."mike-1_2_0".owner = "nim-nix-pkgs";
  inputs."mike-1_2_0".ref   = "master";
  inputs."mike-1_2_0".repo  = "mike";
  inputs."mike-1_2_0".type  = "github";
  inputs."mike-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_2_1".dir   = "1_2_1";
  inputs."mike-1_2_1".owner = "nim-nix-pkgs";
  inputs."mike-1_2_1".ref   = "master";
  inputs."mike-1_2_1".repo  = "mike";
  inputs."mike-1_2_1".type  = "github";
  inputs."mike-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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