{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgen-master".dir   = "master";
  inputs."nimgen-master".owner = "nim-nix-pkgs";
  inputs."nimgen-master".ref   = "master";
  inputs."nimgen-master".repo  = "nimgen";
  inputs."nimgen-master".type  = "github";
  inputs."nimgen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_0".dir   = "v0_1_0";
  inputs."nimgen-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_0".ref   = "master";
  inputs."nimgen-v0_1_0".repo  = "nimgen";
  inputs."nimgen-v0_1_0".type  = "github";
  inputs."nimgen-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_1".dir   = "v0_1_1";
  inputs."nimgen-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_1".ref   = "master";
  inputs."nimgen-v0_1_1".repo  = "nimgen";
  inputs."nimgen-v0_1_1".type  = "github";
  inputs."nimgen-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_2".dir   = "v0_1_2";
  inputs."nimgen-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_2".ref   = "master";
  inputs."nimgen-v0_1_2".repo  = "nimgen";
  inputs."nimgen-v0_1_2".type  = "github";
  inputs."nimgen-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_3".dir   = "v0_1_3";
  inputs."nimgen-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_3".ref   = "master";
  inputs."nimgen-v0_1_3".repo  = "nimgen";
  inputs."nimgen-v0_1_3".type  = "github";
  inputs."nimgen-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_4".dir   = "v0_1_4";
  inputs."nimgen-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_4".ref   = "master";
  inputs."nimgen-v0_1_4".repo  = "nimgen";
  inputs."nimgen-v0_1_4".type  = "github";
  inputs."nimgen-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_5".dir   = "v0_1_5";
  inputs."nimgen-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_1_5".ref   = "master";
  inputs."nimgen-v0_1_5".repo  = "nimgen";
  inputs."nimgen-v0_1_5".type  = "github";
  inputs."nimgen-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_0".dir   = "v0_2_0";
  inputs."nimgen-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_2_0".ref   = "master";
  inputs."nimgen-v0_2_0".repo  = "nimgen";
  inputs."nimgen-v0_2_0".type  = "github";
  inputs."nimgen-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_2".dir   = "v0_2_2";
  inputs."nimgen-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_2_2".ref   = "master";
  inputs."nimgen-v0_2_2".repo  = "nimgen";
  inputs."nimgen-v0_2_2".type  = "github";
  inputs."nimgen-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_3".dir   = "v0_2_3";
  inputs."nimgen-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_2_3".ref   = "master";
  inputs."nimgen-v0_2_3".repo  = "nimgen";
  inputs."nimgen-v0_2_3".type  = "github";
  inputs."nimgen-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_3_0".dir   = "v0_3_0";
  inputs."nimgen-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_3_0".ref   = "master";
  inputs."nimgen-v0_3_0".repo  = "nimgen";
  inputs."nimgen-v0_3_0".type  = "github";
  inputs."nimgen-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_3_1".dir   = "v0_3_1";
  inputs."nimgen-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_3_1".ref   = "master";
  inputs."nimgen-v0_3_1".repo  = "nimgen";
  inputs."nimgen-v0_3_1".type  = "github";
  inputs."nimgen-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_4_0".dir   = "v0_4_0";
  inputs."nimgen-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_4_0".ref   = "master";
  inputs."nimgen-v0_4_0".repo  = "nimgen";
  inputs."nimgen-v0_4_0".type  = "github";
  inputs."nimgen-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_5_0".dir   = "v0_5_0";
  inputs."nimgen-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_5_0".ref   = "master";
  inputs."nimgen-v0_5_0".repo  = "nimgen";
  inputs."nimgen-v0_5_0".type  = "github";
  inputs."nimgen-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_5_1".dir   = "v0_5_1";
  inputs."nimgen-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimgen-v0_5_1".ref   = "master";
  inputs."nimgen-v0_5_1".repo  = "nimgen";
  inputs."nimgen-v0_5_1".type  = "github";
  inputs."nimgen-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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