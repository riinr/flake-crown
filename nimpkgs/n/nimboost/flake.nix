{
  description = ''Additions to the Nim's standard library, like boost for C++'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimboost-master".dir   = "master";
  inputs."nimboost-master".owner = "nim-nix-pkgs";
  inputs."nimboost-master".ref   = "master";
  inputs."nimboost-master".repo  = "nimboost";
  inputs."nimboost-master".type  = "github";
  inputs."nimboost-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_0_1".dir   = "v0_0_1";
  inputs."nimboost-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_0_1".ref   = "master";
  inputs."nimboost-v0_0_1".repo  = "nimboost";
  inputs."nimboost-v0_0_1".type  = "github";
  inputs."nimboost-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_1_0".dir   = "v0_1_0";
  inputs."nimboost-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_1_0".ref   = "master";
  inputs."nimboost-v0_1_0".repo  = "nimboost";
  inputs."nimboost-v0_1_0".type  = "github";
  inputs."nimboost-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_2_0".dir   = "v0_2_0";
  inputs."nimboost-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_2_0".ref   = "master";
  inputs."nimboost-v0_2_0".repo  = "nimboost";
  inputs."nimboost-v0_2_0".type  = "github";
  inputs."nimboost-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_2_1".dir   = "v0_2_1";
  inputs."nimboost-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_2_1".ref   = "master";
  inputs."nimboost-v0_2_1".repo  = "nimboost";
  inputs."nimboost-v0_2_1".type  = "github";
  inputs."nimboost-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_0".dir   = "v0_3_0";
  inputs."nimboost-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_0".ref   = "master";
  inputs."nimboost-v0_3_0".repo  = "nimboost";
  inputs."nimboost-v0_3_0".type  = "github";
  inputs."nimboost-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_1".dir   = "v0_3_1";
  inputs."nimboost-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_1".ref   = "master";
  inputs."nimboost-v0_3_1".repo  = "nimboost";
  inputs."nimboost-v0_3_1".type  = "github";
  inputs."nimboost-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_2".dir   = "v0_3_2";
  inputs."nimboost-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_2".ref   = "master";
  inputs."nimboost-v0_3_2".repo  = "nimboost";
  inputs."nimboost-v0_3_2".type  = "github";
  inputs."nimboost-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_3".dir   = "v0_3_3";
  inputs."nimboost-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_3".ref   = "master";
  inputs."nimboost-v0_3_3".repo  = "nimboost";
  inputs."nimboost-v0_3_3".type  = "github";
  inputs."nimboost-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_4".dir   = "v0_3_4";
  inputs."nimboost-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_4".ref   = "master";
  inputs."nimboost-v0_3_4".repo  = "nimboost";
  inputs."nimboost-v0_3_4".type  = "github";
  inputs."nimboost-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_5".dir   = "v0_3_5";
  inputs."nimboost-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_5".ref   = "master";
  inputs."nimboost-v0_3_5".repo  = "nimboost";
  inputs."nimboost-v0_3_5".type  = "github";
  inputs."nimboost-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_6".dir   = "v0_3_6";
  inputs."nimboost-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_3_6".ref   = "master";
  inputs."nimboost-v0_3_6".repo  = "nimboost";
  inputs."nimboost-v0_3_6".type  = "github";
  inputs."nimboost-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_0".dir   = "v0_4_0";
  inputs."nimboost-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_0".ref   = "master";
  inputs."nimboost-v0_4_0".repo  = "nimboost";
  inputs."nimboost-v0_4_0".type  = "github";
  inputs."nimboost-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_1".dir   = "v0_4_1";
  inputs."nimboost-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_1".ref   = "master";
  inputs."nimboost-v0_4_1".repo  = "nimboost";
  inputs."nimboost-v0_4_1".type  = "github";
  inputs."nimboost-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_2".dir   = "v0_4_2";
  inputs."nimboost-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_2".ref   = "master";
  inputs."nimboost-v0_4_2".repo  = "nimboost";
  inputs."nimboost-v0_4_2".type  = "github";
  inputs."nimboost-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_3".dir   = "v0_4_3";
  inputs."nimboost-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_3".ref   = "master";
  inputs."nimboost-v0_4_3".repo  = "nimboost";
  inputs."nimboost-v0_4_3".type  = "github";
  inputs."nimboost-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_4".dir   = "v0_4_4";
  inputs."nimboost-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_4".ref   = "master";
  inputs."nimboost-v0_4_4".repo  = "nimboost";
  inputs."nimboost-v0_4_4".type  = "github";
  inputs."nimboost-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_5".dir   = "v0_4_5";
  inputs."nimboost-v0_4_5".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_5".ref   = "master";
  inputs."nimboost-v0_4_5".repo  = "nimboost";
  inputs."nimboost-v0_4_5".type  = "github";
  inputs."nimboost-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_8".dir   = "v0_4_8";
  inputs."nimboost-v0_4_8".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_4_8".ref   = "master";
  inputs."nimboost-v0_4_8".repo  = "nimboost";
  inputs."nimboost-v0_4_8".type  = "github";
  inputs."nimboost-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_0".dir   = "v0_5_0";
  inputs."nimboost-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_5_0".ref   = "master";
  inputs."nimboost-v0_5_0".repo  = "nimboost";
  inputs."nimboost-v0_5_0".type  = "github";
  inputs."nimboost-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_1".dir   = "v0_5_1";
  inputs."nimboost-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_5_1".ref   = "master";
  inputs."nimboost-v0_5_1".repo  = "nimboost";
  inputs."nimboost-v0_5_1".type  = "github";
  inputs."nimboost-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_3".dir   = "v0_5_3";
  inputs."nimboost-v0_5_3".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_5_3".ref   = "master";
  inputs."nimboost-v0_5_3".repo  = "nimboost";
  inputs."nimboost-v0_5_3".type  = "github";
  inputs."nimboost-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_4".dir   = "v0_5_4";
  inputs."nimboost-v0_5_4".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_5_4".ref   = "master";
  inputs."nimboost-v0_5_4".repo  = "nimboost";
  inputs."nimboost-v0_5_4".type  = "github";
  inputs."nimboost-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_5".dir   = "v0_5_5";
  inputs."nimboost-v0_5_5".owner = "nim-nix-pkgs";
  inputs."nimboost-v0_5_5".ref   = "master";
  inputs."nimboost-v0_5_5".repo  = "nimboost";
  inputs."nimboost-v0_5_5".type  = "github";
  inputs."nimboost-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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