{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris-0_2_0".dir   = "0_2_0";
  inputs."eris-0_2_0".owner = "nim-nix-pkgs";
  inputs."eris-0_2_0".ref   = "master";
  inputs."eris-0_2_0".repo  = "eris";
  inputs."eris-0_2_0".type  = "github";
  inputs."eris-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_2_1".dir   = "0_2_1";
  inputs."eris-0_2_1".owner = "nim-nix-pkgs";
  inputs."eris-0_2_1".ref   = "master";
  inputs."eris-0_2_1".repo  = "eris";
  inputs."eris-0_2_1".type  = "github";
  inputs."eris-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_3_0".dir   = "0_3_0";
  inputs."eris-0_3_0".owner = "nim-nix-pkgs";
  inputs."eris-0_3_0".ref   = "master";
  inputs."eris-0_3_0".repo  = "eris";
  inputs."eris-0_3_0".type  = "github";
  inputs."eris-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_3_1".dir   = "0_3_1";
  inputs."eris-0_3_1".owner = "nim-nix-pkgs";
  inputs."eris-0_3_1".ref   = "master";
  inputs."eris-0_3_1".repo  = "eris";
  inputs."eris-0_3_1".type  = "github";
  inputs."eris-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_0".dir   = "0_4_0";
  inputs."eris-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris-0_4_0".ref   = "master";
  inputs."eris-0_4_0".repo  = "eris";
  inputs."eris-0_4_0".type  = "github";
  inputs."eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_5_0".dir   = "0_5_0";
  inputs."eris-0_5_0".owner = "nim-nix-pkgs";
  inputs."eris-0_5_0".ref   = "master";
  inputs."eris-0_5_0".repo  = "eris";
  inputs."eris-0_5_0".type  = "github";
  inputs."eris-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_6_0".dir   = "0_6_0";
  inputs."eris-0_6_0".owner = "nim-nix-pkgs";
  inputs."eris-0_6_0".ref   = "master";
  inputs."eris-0_6_0".repo  = "eris";
  inputs."eris-0_6_0".type  = "github";
  inputs."eris-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_7_0".dir   = "0_7_0";
  inputs."eris-0_7_0".owner = "nim-nix-pkgs";
  inputs."eris-0_7_0".ref   = "master";
  inputs."eris-0_7_0".repo  = "eris";
  inputs."eris-0_7_0".type  = "github";
  inputs."eris-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_7_1".dir   = "0_7_1";
  inputs."eris-0_7_1".owner = "nim-nix-pkgs";
  inputs."eris-0_7_1".ref   = "master";
  inputs."eris-0_7_1".repo  = "eris";
  inputs."eris-0_7_1".type  = "github";
  inputs."eris-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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