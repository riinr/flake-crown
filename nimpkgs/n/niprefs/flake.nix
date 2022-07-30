{
  description = '' A dynamic preferences-system with a table-like structure for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niprefs-devel".dir   = "devel";
  inputs."niprefs-devel".owner = "nim-nix-pkgs";
  inputs."niprefs-devel".ref   = "master";
  inputs."niprefs-devel".repo  = "niprefs";
  inputs."niprefs-devel".type  = "github";
  inputs."niprefs-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-main".dir   = "main";
  inputs."niprefs-main".owner = "nim-nix-pkgs";
  inputs."niprefs-main".ref   = "master";
  inputs."niprefs-main".repo  = "niprefs";
  inputs."niprefs-main".type  = "github";
  inputs."niprefs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_1".dir   = "0_1_1";
  inputs."niprefs-0_1_1".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_1".ref   = "master";
  inputs."niprefs-0_1_1".repo  = "niprefs";
  inputs."niprefs-0_1_1".type  = "github";
  inputs."niprefs-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_2".dir   = "0_1_2";
  inputs."niprefs-0_1_2".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_2".ref   = "master";
  inputs."niprefs-0_1_2".repo  = "niprefs";
  inputs."niprefs-0_1_2".type  = "github";
  inputs."niprefs-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_3".dir   = "0_1_3";
  inputs."niprefs-0_1_3".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_3".ref   = "master";
  inputs."niprefs-0_1_3".repo  = "niprefs";
  inputs."niprefs-0_1_3".type  = "github";
  inputs."niprefs-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_4".dir   = "0_1_4";
  inputs."niprefs-0_1_4".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_4".ref   = "master";
  inputs."niprefs-0_1_4".repo  = "niprefs";
  inputs."niprefs-0_1_4".type  = "github";
  inputs."niprefs-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_5".dir   = "0_1_5";
  inputs."niprefs-0_1_5".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_5".ref   = "master";
  inputs."niprefs-0_1_5".repo  = "niprefs";
  inputs."niprefs-0_1_5".type  = "github";
  inputs."niprefs-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_61".dir   = "0_1_61";
  inputs."niprefs-0_1_61".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_61".ref   = "master";
  inputs."niprefs-0_1_61".repo  = "niprefs";
  inputs."niprefs-0_1_61".type  = "github";
  inputs."niprefs-0_1_61".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_61".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_62".dir   = "0_1_62";
  inputs."niprefs-0_1_62".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_62".ref   = "master";
  inputs."niprefs-0_1_62".repo  = "niprefs";
  inputs."niprefs-0_1_62".type  = "github";
  inputs."niprefs-0_1_62".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_62".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_1_7".dir   = "0_1_7";
  inputs."niprefs-0_1_7".owner = "nim-nix-pkgs";
  inputs."niprefs-0_1_7".ref   = "master";
  inputs."niprefs-0_1_7".repo  = "niprefs";
  inputs."niprefs-0_1_7".type  = "github";
  inputs."niprefs-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_2_0".dir   = "0_2_0";
  inputs."niprefs-0_2_0".owner = "nim-nix-pkgs";
  inputs."niprefs-0_2_0".ref   = "master";
  inputs."niprefs-0_2_0".repo  = "niprefs";
  inputs."niprefs-0_2_0".type  = "github";
  inputs."niprefs-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_2_1".dir   = "0_2_1";
  inputs."niprefs-0_2_1".owner = "nim-nix-pkgs";
  inputs."niprefs-0_2_1".ref   = "master";
  inputs."niprefs-0_2_1".repo  = "niprefs";
  inputs."niprefs-0_2_1".type  = "github";
  inputs."niprefs-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_2_2".dir   = "0_2_2";
  inputs."niprefs-0_2_2".owner = "nim-nix-pkgs";
  inputs."niprefs-0_2_2".ref   = "master";
  inputs."niprefs-0_2_2".repo  = "niprefs";
  inputs."niprefs-0_2_2".type  = "github";
  inputs."niprefs-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_2_3".dir   = "0_2_3";
  inputs."niprefs-0_2_3".owner = "nim-nix-pkgs";
  inputs."niprefs-0_2_3".ref   = "master";
  inputs."niprefs-0_2_3".repo  = "niprefs";
  inputs."niprefs-0_2_3".type  = "github";
  inputs."niprefs-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_3_0".dir   = "0_3_0";
  inputs."niprefs-0_3_0".owner = "nim-nix-pkgs";
  inputs."niprefs-0_3_0".ref   = "master";
  inputs."niprefs-0_3_0".repo  = "niprefs";
  inputs."niprefs-0_3_0".type  = "github";
  inputs."niprefs-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_3_1".dir   = "0_3_1";
  inputs."niprefs-0_3_1".owner = "nim-nix-pkgs";
  inputs."niprefs-0_3_1".ref   = "master";
  inputs."niprefs-0_3_1".repo  = "niprefs";
  inputs."niprefs-0_3_1".type  = "github";
  inputs."niprefs-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_3_3".dir   = "0_3_3";
  inputs."niprefs-0_3_3".owner = "nim-nix-pkgs";
  inputs."niprefs-0_3_3".ref   = "master";
  inputs."niprefs-0_3_3".repo  = "niprefs";
  inputs."niprefs-0_3_3".type  = "github";
  inputs."niprefs-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niprefs-0_3_4".dir   = "0_3_4";
  inputs."niprefs-0_3_4".owner = "nim-nix-pkgs";
  inputs."niprefs-0_3_4".ref   = "master";
  inputs."niprefs-0_3_4".repo  = "niprefs";
  inputs."niprefs-0_3_4".type  = "github";
  inputs."niprefs-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niprefs-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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