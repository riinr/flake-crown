{
  description = ''2d collision library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bumpy-master".dir   = "master";
  inputs."bumpy-master".owner = "nim-nix-pkgs";
  inputs."bumpy-master".ref   = "master";
  inputs."bumpy-master".repo  = "bumpy";
  inputs."bumpy-master".type  = "github";
  inputs."bumpy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_1_0".dir   = "0_1_0";
  inputs."bumpy-0_1_0".owner = "nim-nix-pkgs";
  inputs."bumpy-0_1_0".ref   = "master";
  inputs."bumpy-0_1_0".repo  = "bumpy";
  inputs."bumpy-0_1_0".type  = "github";
  inputs."bumpy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_2_0".dir   = "0_2_0";
  inputs."bumpy-0_2_0".owner = "nim-nix-pkgs";
  inputs."bumpy-0_2_0".ref   = "master";
  inputs."bumpy-0_2_0".repo  = "bumpy";
  inputs."bumpy-0_2_0".type  = "github";
  inputs."bumpy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_2_1".dir   = "0_2_1";
  inputs."bumpy-0_2_1".owner = "nim-nix-pkgs";
  inputs."bumpy-0_2_1".ref   = "master";
  inputs."bumpy-0_2_1".repo  = "bumpy";
  inputs."bumpy-0_2_1".type  = "github";
  inputs."bumpy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_0".dir   = "1_0_0";
  inputs."bumpy-1_0_0".owner = "nim-nix-pkgs";
  inputs."bumpy-1_0_0".ref   = "master";
  inputs."bumpy-1_0_0".repo  = "bumpy";
  inputs."bumpy-1_0_0".type  = "github";
  inputs."bumpy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_1".dir   = "1_0_1";
  inputs."bumpy-1_0_1".owner = "nim-nix-pkgs";
  inputs."bumpy-1_0_1".ref   = "master";
  inputs."bumpy-1_0_1".repo  = "bumpy";
  inputs."bumpy-1_0_1".type  = "github";
  inputs."bumpy-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_2".dir   = "1_0_2";
  inputs."bumpy-1_0_2".owner = "nim-nix-pkgs";
  inputs."bumpy-1_0_2".ref   = "master";
  inputs."bumpy-1_0_2".repo  = "bumpy";
  inputs."bumpy-1_0_2".type  = "github";
  inputs."bumpy-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_3".dir   = "1_0_3";
  inputs."bumpy-1_0_3".owner = "nim-nix-pkgs";
  inputs."bumpy-1_0_3".ref   = "master";
  inputs."bumpy-1_0_3".repo  = "bumpy";
  inputs."bumpy-1_0_3".type  = "github";
  inputs."bumpy-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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