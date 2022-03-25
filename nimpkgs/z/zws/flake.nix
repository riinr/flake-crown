{
  description = ''A command line interface for shortening URLs with ZWS instances'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cli-main".dir   = "main";
  inputs."cli-main".owner = "nim-nix-pkgs";
  inputs."cli-main".ref   = "master";
  inputs."cli-main".repo  = "cli";
  inputs."cli-main".type  = "github";
  inputs."cli-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_0_0".dir   = "v1_0_0";
  inputs."cli-v1_0_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_0_0".ref   = "master";
  inputs."cli-v1_0_0".repo  = "cli";
  inputs."cli-v1_0_0".type  = "github";
  inputs."cli-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_0_1".dir   = "v1_0_1";
  inputs."cli-v1_0_1".owner = "nim-nix-pkgs";
  inputs."cli-v1_0_1".ref   = "master";
  inputs."cli-v1_0_1".repo  = "cli";
  inputs."cli-v1_0_1".type  = "github";
  inputs."cli-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_1_0".dir   = "v1_1_0";
  inputs."cli-v1_1_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_1_0".ref   = "master";
  inputs."cli-v1_1_0".repo  = "cli";
  inputs."cli-v1_1_0".type  = "github";
  inputs."cli-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_1_1".dir   = "v1_1_1";
  inputs."cli-v1_1_1".owner = "nim-nix-pkgs";
  inputs."cli-v1_1_1".ref   = "master";
  inputs."cli-v1_1_1".repo  = "cli";
  inputs."cli-v1_1_1".type  = "github";
  inputs."cli-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_1_2".dir   = "v1_1_2";
  inputs."cli-v1_1_2".owner = "nim-nix-pkgs";
  inputs."cli-v1_1_2".ref   = "master";
  inputs."cli-v1_1_2".repo  = "cli";
  inputs."cli-v1_1_2".type  = "github";
  inputs."cli-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_1_3".dir   = "v1_1_3";
  inputs."cli-v1_1_3".owner = "nim-nix-pkgs";
  inputs."cli-v1_1_3".ref   = "master";
  inputs."cli-v1_1_3".repo  = "cli";
  inputs."cli-v1_1_3".type  = "github";
  inputs."cli-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_2_0".dir   = "v1_2_0";
  inputs."cli-v1_2_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_2_0".ref   = "master";
  inputs."cli-v1_2_0".repo  = "cli";
  inputs."cli-v1_2_0".type  = "github";
  inputs."cli-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_2_1".dir   = "v1_2_1";
  inputs."cli-v1_2_1".owner = "nim-nix-pkgs";
  inputs."cli-v1_2_1".ref   = "master";
  inputs."cli-v1_2_1".repo  = "cli";
  inputs."cli-v1_2_1".type  = "github";
  inputs."cli-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_2_2".dir   = "v1_2_2";
  inputs."cli-v1_2_2".owner = "nim-nix-pkgs";
  inputs."cli-v1_2_2".ref   = "master";
  inputs."cli-v1_2_2".repo  = "cli";
  inputs."cli-v1_2_2".type  = "github";
  inputs."cli-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_3_0".dir   = "v1_3_0";
  inputs."cli-v1_3_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_3_0".ref   = "master";
  inputs."cli-v1_3_0".repo  = "cli";
  inputs."cli-v1_3_0".type  = "github";
  inputs."cli-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_4_0".dir   = "v1_4_0";
  inputs."cli-v1_4_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_4_0".ref   = "master";
  inputs."cli-v1_4_0".repo  = "cli";
  inputs."cli-v1_4_0".type  = "github";
  inputs."cli-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli-v1_5_0".dir   = "v1_5_0";
  inputs."cli-v1_5_0".owner = "nim-nix-pkgs";
  inputs."cli-v1_5_0".ref   = "master";
  inputs."cli-v1_5_0".repo  = "cli";
  inputs."cli-v1_5_0".type  = "github";
  inputs."cli-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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