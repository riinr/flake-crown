{
  description = ''Unicode normalization forms (tr15)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."normalize-master".dir   = "master";
  inputs."normalize-master".owner = "nim-nix-pkgs";
  inputs."normalize-master".ref   = "master";
  inputs."normalize-master".repo  = "normalize";
  inputs."normalize-master".type  = "github";
  inputs."normalize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_1_0".dir   = "v0_1_0";
  inputs."normalize-v0_1_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_1_0".ref   = "master";
  inputs."normalize-v0_1_0".repo  = "normalize";
  inputs."normalize-v0_1_0".type  = "github";
  inputs."normalize-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_1_1".dir   = "v0_1_1";
  inputs."normalize-v0_1_1".owner = "nim-nix-pkgs";
  inputs."normalize-v0_1_1".ref   = "master";
  inputs."normalize-v0_1_1".repo  = "normalize";
  inputs."normalize-v0_1_1".type  = "github";
  inputs."normalize-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_0".dir   = "v0_2_0";
  inputs."normalize-v0_2_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_2_0".ref   = "master";
  inputs."normalize-v0_2_0".repo  = "normalize";
  inputs."normalize-v0_2_0".type  = "github";
  inputs."normalize-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_1".dir   = "v0_2_1";
  inputs."normalize-v0_2_1".owner = "nim-nix-pkgs";
  inputs."normalize-v0_2_1".ref   = "master";
  inputs."normalize-v0_2_1".repo  = "normalize";
  inputs."normalize-v0_2_1".type  = "github";
  inputs."normalize-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_2".dir   = "v0_2_2";
  inputs."normalize-v0_2_2".owner = "nim-nix-pkgs";
  inputs."normalize-v0_2_2".ref   = "master";
  inputs."normalize-v0_2_2".repo  = "normalize";
  inputs."normalize-v0_2_2".type  = "github";
  inputs."normalize-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_3_0".dir   = "v0_3_0";
  inputs."normalize-v0_3_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_3_0".ref   = "master";
  inputs."normalize-v0_3_0".repo  = "normalize";
  inputs."normalize-v0_3_0".type  = "github";
  inputs."normalize-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_3_1".dir   = "v0_3_1";
  inputs."normalize-v0_3_1".owner = "nim-nix-pkgs";
  inputs."normalize-v0_3_1".ref   = "master";
  inputs."normalize-v0_3_1".repo  = "normalize";
  inputs."normalize-v0_3_1".type  = "github";
  inputs."normalize-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_4_0".dir   = "v0_4_0";
  inputs."normalize-v0_4_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_4_0".ref   = "master";
  inputs."normalize-v0_4_0".repo  = "normalize";
  inputs."normalize-v0_4_0".type  = "github";
  inputs."normalize-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_5_0".dir   = "v0_5_0";
  inputs."normalize-v0_5_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_5_0".ref   = "master";
  inputs."normalize-v0_5_0".repo  = "normalize";
  inputs."normalize-v0_5_0".type  = "github";
  inputs."normalize-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_6_0".dir   = "v0_6_0";
  inputs."normalize-v0_6_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_6_0".ref   = "master";
  inputs."normalize-v0_6_0".repo  = "normalize";
  inputs."normalize-v0_6_0".type  = "github";
  inputs."normalize-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_8_0".dir   = "v0_8_0";
  inputs."normalize-v0_8_0".owner = "nim-nix-pkgs";
  inputs."normalize-v0_8_0".ref   = "master";
  inputs."normalize-v0_8_0".repo  = "normalize";
  inputs."normalize-v0_8_0".type  = "github";
  inputs."normalize-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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