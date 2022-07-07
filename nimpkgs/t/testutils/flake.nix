{
  description = ''A comprehensive toolkit for all your testing needs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."testutils-master".dir   = "master";
  inputs."testutils-master".owner = "nim-nix-pkgs";
  inputs."testutils-master".ref   = "master";
  inputs."testutils-master".repo  = "testutils";
  inputs."testutils-master".type  = "github";
  inputs."testutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_0_2".dir   = "0_0_2";
  inputs."testutils-0_0_2".owner = "nim-nix-pkgs";
  inputs."testutils-0_0_2".ref   = "master";
  inputs."testutils-0_0_2".repo  = "testutils";
  inputs."testutils-0_0_2".type  = "github";
  inputs."testutils-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_1_0".dir   = "0_1_0";
  inputs."testutils-0_1_0".owner = "nim-nix-pkgs";
  inputs."testutils-0_1_0".ref   = "master";
  inputs."testutils-0_1_0".repo  = "testutils";
  inputs."testutils-0_1_0".type  = "github";
  inputs."testutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_1_1".dir   = "0_1_1";
  inputs."testutils-0_1_1".owner = "nim-nix-pkgs";
  inputs."testutils-0_1_1".ref   = "master";
  inputs."testutils-0_1_1".repo  = "testutils";
  inputs."testutils-0_1_1".type  = "github";
  inputs."testutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_2_0".dir   = "0_2_0";
  inputs."testutils-0_2_0".owner = "nim-nix-pkgs";
  inputs."testutils-0_2_0".ref   = "master";
  inputs."testutils-0_2_0".repo  = "testutils";
  inputs."testutils-0_2_0".type  = "github";
  inputs."testutils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_3_0".dir   = "0_3_0";
  inputs."testutils-0_3_0".owner = "nim-nix-pkgs";
  inputs."testutils-0_3_0".ref   = "master";
  inputs."testutils-0_3_0".repo  = "testutils";
  inputs."testutils-0_3_0".type  = "github";
  inputs."testutils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_4_0".dir   = "0_4_0";
  inputs."testutils-0_4_0".owner = "nim-nix-pkgs";
  inputs."testutils-0_4_0".ref   = "master";
  inputs."testutils-0_4_0".repo  = "testutils";
  inputs."testutils-0_4_0".type  = "github";
  inputs."testutils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_4_1".dir   = "0_4_1";
  inputs."testutils-0_4_1".owner = "nim-nix-pkgs";
  inputs."testutils-0_4_1".ref   = "master";
  inputs."testutils-0_4_1".repo  = "testutils";
  inputs."testutils-0_4_1".type  = "github";
  inputs."testutils-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-v0_4_2".dir   = "v0_4_2";
  inputs."testutils-v0_4_2".owner = "nim-nix-pkgs";
  inputs."testutils-v0_4_2".ref   = "master";
  inputs."testutils-v0_4_2".repo  = "testutils";
  inputs."testutils-v0_4_2".type  = "github";
  inputs."testutils-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-v0_5_0".dir   = "v0_5_0";
  inputs."testutils-v0_5_0".owner = "nim-nix-pkgs";
  inputs."testutils-v0_5_0".ref   = "master";
  inputs."testutils-v0_5_0".repo  = "testutils";
  inputs."testutils-v0_5_0".type  = "github";
  inputs."testutils-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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