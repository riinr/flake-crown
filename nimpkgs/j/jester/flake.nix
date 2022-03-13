{
  description = ''A sinatra-like web framework for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jester-master".dir   = "master";
  inputs."jester-master".owner = "nim-nix-pkgs";
  inputs."jester-master".ref   = "master";
  inputs."jester-master".repo  = "jester";
  inputs."jester-master".type  = "github";
  inputs."jester-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_1_0".dir   = "v0_1_0";
  inputs."jester-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jester-v0_1_0".ref   = "master";
  inputs."jester-v0_1_0".repo  = "jester";
  inputs."jester-v0_1_0".type  = "github";
  inputs."jester-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_1_1".dir   = "v0_1_1";
  inputs."jester-v0_1_1".owner = "nim-nix-pkgs";
  inputs."jester-v0_1_1".ref   = "master";
  inputs."jester-v0_1_1".repo  = "jester";
  inputs."jester-v0_1_1".type  = "github";
  inputs."jester-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_2_0".dir   = "v0_2_0";
  inputs."jester-v0_2_0".owner = "nim-nix-pkgs";
  inputs."jester-v0_2_0".ref   = "master";
  inputs."jester-v0_2_0".repo  = "jester";
  inputs."jester-v0_2_0".type  = "github";
  inputs."jester-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_2_1".dir   = "v0_2_1";
  inputs."jester-v0_2_1".owner = "nim-nix-pkgs";
  inputs."jester-v0_2_1".ref   = "master";
  inputs."jester-v0_2_1".repo  = "jester";
  inputs."jester-v0_2_1".type  = "github";
  inputs."jester-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_3_0".dir   = "v0_3_0";
  inputs."jester-v0_3_0".owner = "nim-nix-pkgs";
  inputs."jester-v0_3_0".ref   = "master";
  inputs."jester-v0_3_0".repo  = "jester";
  inputs."jester-v0_3_0".type  = "github";
  inputs."jester-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_0".dir   = "v0_4_0";
  inputs."jester-v0_4_0".owner = "nim-nix-pkgs";
  inputs."jester-v0_4_0".ref   = "master";
  inputs."jester-v0_4_0".repo  = "jester";
  inputs."jester-v0_4_0".type  = "github";
  inputs."jester-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_1".dir   = "v0_4_1";
  inputs."jester-v0_4_1".owner = "nim-nix-pkgs";
  inputs."jester-v0_4_1".ref   = "master";
  inputs."jester-v0_4_1".repo  = "jester";
  inputs."jester-v0_4_1".type  = "github";
  inputs."jester-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_2".dir   = "v0_4_2";
  inputs."jester-v0_4_2".owner = "nim-nix-pkgs";
  inputs."jester-v0_4_2".ref   = "master";
  inputs."jester-v0_4_2".repo  = "jester";
  inputs."jester-v0_4_2".type  = "github";
  inputs."jester-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_3".dir   = "v0_4_3";
  inputs."jester-v0_4_3".owner = "nim-nix-pkgs";
  inputs."jester-v0_4_3".ref   = "master";
  inputs."jester-v0_4_3".repo  = "jester";
  inputs."jester-v0_4_3".type  = "github";
  inputs."jester-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_5_0".dir   = "v0_5_0";
  inputs."jester-v0_5_0".owner = "nim-nix-pkgs";
  inputs."jester-v0_5_0".ref   = "master";
  inputs."jester-v0_5_0".repo  = "jester";
  inputs."jester-v0_5_0".type  = "github";
  inputs."jester-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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