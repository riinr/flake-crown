{
  description = ''Useful synchronization primitives'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sync-master".dir   = "master";
  inputs."sync-master".owner = "nim-nix-pkgs";
  inputs."sync-master".ref   = "master";
  inputs."sync-master".repo  = "sync";
  inputs."sync-master".type  = "github";
  inputs."sync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_1_0".dir   = "v0_1_0";
  inputs."sync-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_1_0".ref   = "master";
  inputs."sync-v0_1_0".repo  = "sync";
  inputs."sync-v0_1_0".type  = "github";
  inputs."sync-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_2_0".dir   = "v0_2_0";
  inputs."sync-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_2_0".ref   = "master";
  inputs."sync-v0_2_0".repo  = "sync";
  inputs."sync-v0_2_0".type  = "github";
  inputs."sync-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_3_0".dir   = "v0_3_0";
  inputs."sync-v0_3_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_3_0".ref   = "master";
  inputs."sync-v0_3_0".repo  = "sync";
  inputs."sync-v0_3_0".type  = "github";
  inputs."sync-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_4_0".dir   = "v0_4_0";
  inputs."sync-v0_4_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_4_0".ref   = "master";
  inputs."sync-v0_4_0".repo  = "sync";
  inputs."sync-v0_4_0".type  = "github";
  inputs."sync-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_5_0".dir   = "v0_5_0";
  inputs."sync-v0_5_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_5_0".ref   = "master";
  inputs."sync-v0_5_0".repo  = "sync";
  inputs."sync-v0_5_0".type  = "github";
  inputs."sync-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_6_0".dir   = "v0_6_0";
  inputs."sync-v0_6_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_6_0".ref   = "master";
  inputs."sync-v0_6_0".repo  = "sync";
  inputs."sync-v0_6_0".type  = "github";
  inputs."sync-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_7_0".dir   = "v0_7_0";
  inputs."sync-v0_7_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_7_0".ref   = "master";
  inputs."sync-v0_7_0".repo  = "sync";
  inputs."sync-v0_7_0".type  = "github";
  inputs."sync-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_9_0".dir   = "v0_9_0";
  inputs."sync-v0_9_0".owner = "nim-nix-pkgs";
  inputs."sync-v0_9_0".ref   = "master";
  inputs."sync-v0_9_0".repo  = "sync";
  inputs."sync-v0_9_0".type  = "github";
  inputs."sync-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_0_0".dir   = "v1_0_0";
  inputs."sync-v1_0_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_0_0".ref   = "master";
  inputs."sync-v1_0_0".repo  = "sync";
  inputs."sync-v1_0_0".type  = "github";
  inputs."sync-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_1_0".dir   = "v1_1_0";
  inputs."sync-v1_1_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_1_0".ref   = "master";
  inputs."sync-v1_1_0".repo  = "sync";
  inputs."sync-v1_1_0".type  = "github";
  inputs."sync-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_2_0".dir   = "v1_2_0";
  inputs."sync-v1_2_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_2_0".ref   = "master";
  inputs."sync-v1_2_0".repo  = "sync";
  inputs."sync-v1_2_0".type  = "github";
  inputs."sync-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_3_0".dir   = "v1_3_0";
  inputs."sync-v1_3_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_3_0".ref   = "master";
  inputs."sync-v1_3_0".repo  = "sync";
  inputs."sync-v1_3_0".type  = "github";
  inputs."sync-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_4_0".dir   = "v1_4_0";
  inputs."sync-v1_4_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_4_0".ref   = "master";
  inputs."sync-v1_4_0".repo  = "sync";
  inputs."sync-v1_4_0".type  = "github";
  inputs."sync-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_5_0".dir   = "v1_5_0";
  inputs."sync-v1_5_0".owner = "nim-nix-pkgs";
  inputs."sync-v1_5_0".ref   = "master";
  inputs."sync-v1_5_0".repo  = "sync";
  inputs."sync-v1_5_0".type  = "github";
  inputs."sync-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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