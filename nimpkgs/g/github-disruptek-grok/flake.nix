{
  description = ''don't read too much into it'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grok-master".dir   = "master";
  inputs."grok-master".owner = "nim-nix-pkgs";
  inputs."grok-master".ref   = "master";
  inputs."grok-master".repo  = "grok";
  inputs."grok-master".type  = "github";
  inputs."grok-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_1".dir   = "0_0_1";
  inputs."grok-0_0_1".owner = "nim-nix-pkgs";
  inputs."grok-0_0_1".ref   = "master";
  inputs."grok-0_0_1".repo  = "grok";
  inputs."grok-0_0_1".type  = "github";
  inputs."grok-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_2".dir   = "0_0_2";
  inputs."grok-0_0_2".owner = "nim-nix-pkgs";
  inputs."grok-0_0_2".ref   = "master";
  inputs."grok-0_0_2".repo  = "grok";
  inputs."grok-0_0_2".type  = "github";
  inputs."grok-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_3".dir   = "0_0_3";
  inputs."grok-0_0_3".owner = "nim-nix-pkgs";
  inputs."grok-0_0_3".ref   = "master";
  inputs."grok-0_0_3".repo  = "grok";
  inputs."grok-0_0_3".type  = "github";
  inputs."grok-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_4".dir   = "0_0_4";
  inputs."grok-0_0_4".owner = "nim-nix-pkgs";
  inputs."grok-0_0_4".ref   = "master";
  inputs."grok-0_0_4".repo  = "grok";
  inputs."grok-0_0_4".type  = "github";
  inputs."grok-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_5".dir   = "0_0_5";
  inputs."grok-0_0_5".owner = "nim-nix-pkgs";
  inputs."grok-0_0_5".ref   = "master";
  inputs."grok-0_0_5".repo  = "grok";
  inputs."grok-0_0_5".type  = "github";
  inputs."grok-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_0_6".dir   = "0_0_6";
  inputs."grok-0_0_6".owner = "nim-nix-pkgs";
  inputs."grok-0_0_6".ref   = "master";
  inputs."grok-0_0_6".repo  = "grok";
  inputs."grok-0_0_6".type  = "github";
  inputs."grok-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_1_0".dir   = "0_1_0";
  inputs."grok-0_1_0".owner = "nim-nix-pkgs";
  inputs."grok-0_1_0".ref   = "master";
  inputs."grok-0_1_0".repo  = "grok";
  inputs."grok-0_1_0".type  = "github";
  inputs."grok-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_2_0".dir   = "0_2_0";
  inputs."grok-0_2_0".owner = "nim-nix-pkgs";
  inputs."grok-0_2_0".ref   = "master";
  inputs."grok-0_2_0".repo  = "grok";
  inputs."grok-0_2_0".type  = "github";
  inputs."grok-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_2_1".dir   = "0_2_1";
  inputs."grok-0_2_1".owner = "nim-nix-pkgs";
  inputs."grok-0_2_1".ref   = "master";
  inputs."grok-0_2_1".repo  = "grok";
  inputs."grok-0_2_1".type  = "github";
  inputs."grok-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_3_0".dir   = "0_3_0";
  inputs."grok-0_3_0".owner = "nim-nix-pkgs";
  inputs."grok-0_3_0".ref   = "master";
  inputs."grok-0_3_0".repo  = "grok";
  inputs."grok-0_3_0".type  = "github";
  inputs."grok-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_3_1".dir   = "0_3_1";
  inputs."grok-0_3_1".owner = "nim-nix-pkgs";
  inputs."grok-0_3_1".ref   = "master";
  inputs."grok-0_3_1".repo  = "grok";
  inputs."grok-0_3_1".type  = "github";
  inputs."grok-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_3_2".dir   = "0_3_2";
  inputs."grok-0_3_2".owner = "nim-nix-pkgs";
  inputs."grok-0_3_2".ref   = "master";
  inputs."grok-0_3_2".repo  = "grok";
  inputs."grok-0_3_2".type  = "github";
  inputs."grok-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_3_3".dir   = "0_3_3";
  inputs."grok-0_3_3".owner = "nim-nix-pkgs";
  inputs."grok-0_3_3".ref   = "master";
  inputs."grok-0_3_3".repo  = "grok";
  inputs."grok-0_3_3".type  = "github";
  inputs."grok-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_4_0".dir   = "0_4_0";
  inputs."grok-0_4_0".owner = "nim-nix-pkgs";
  inputs."grok-0_4_0".ref   = "master";
  inputs."grok-0_4_0".repo  = "grok";
  inputs."grok-0_4_0".type  = "github";
  inputs."grok-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_5_0".dir   = "0_5_0";
  inputs."grok-0_5_0".owner = "nim-nix-pkgs";
  inputs."grok-0_5_0".ref   = "master";
  inputs."grok-0_5_0".repo  = "grok";
  inputs."grok-0_5_0".type  = "github";
  inputs."grok-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_5_1".dir   = "0_5_1";
  inputs."grok-0_5_1".owner = "nim-nix-pkgs";
  inputs."grok-0_5_1".ref   = "master";
  inputs."grok-0_5_1".repo  = "grok";
  inputs."grok-0_5_1".type  = "github";
  inputs."grok-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_5_2".dir   = "0_5_2";
  inputs."grok-0_5_2".owner = "nim-nix-pkgs";
  inputs."grok-0_5_2".ref   = "master";
  inputs."grok-0_5_2".repo  = "grok";
  inputs."grok-0_5_2".type  = "github";
  inputs."grok-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_5_3".dir   = "0_5_3";
  inputs."grok-0_5_3".owner = "nim-nix-pkgs";
  inputs."grok-0_5_3".ref   = "master";
  inputs."grok-0_5_3".repo  = "grok";
  inputs."grok-0_5_3".type  = "github";
  inputs."grok-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_6_0".dir   = "0_6_0";
  inputs."grok-0_6_0".owner = "nim-nix-pkgs";
  inputs."grok-0_6_0".ref   = "master";
  inputs."grok-0_6_0".repo  = "grok";
  inputs."grok-0_6_0".type  = "github";
  inputs."grok-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_6_1".dir   = "0_6_1";
  inputs."grok-0_6_1".owner = "nim-nix-pkgs";
  inputs."grok-0_6_1".ref   = "master";
  inputs."grok-0_6_1".repo  = "grok";
  inputs."grok-0_6_1".type  = "github";
  inputs."grok-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grok-0_6_2".dir   = "0_6_2";
  inputs."grok-0_6_2".owner = "nim-nix-pkgs";
  inputs."grok-0_6_2".ref   = "master";
  inputs."grok-0_6_2".repo  = "grok";
  inputs."grok-0_6_2".type  = "github";
  inputs."grok-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grok-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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