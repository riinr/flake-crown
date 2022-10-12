{
  description = ''Qt Qml bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimqml-master".dir   = "master";
  inputs."nimqml-master".owner = "nim-nix-pkgs";
  inputs."nimqml-master".ref   = "master";
  inputs."nimqml-master".repo  = "nimqml";
  inputs."nimqml-master".type  = "github";
  inputs."nimqml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_1_0".dir   = "0_1_0";
  inputs."nimqml-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_1_0".ref   = "master";
  inputs."nimqml-0_1_0".repo  = "nimqml";
  inputs."nimqml-0_1_0".type  = "github";
  inputs."nimqml-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_2_0".dir   = "0_2_0";
  inputs."nimqml-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_2_0".ref   = "master";
  inputs."nimqml-0_2_0".repo  = "nimqml";
  inputs."nimqml-0_2_0".type  = "github";
  inputs."nimqml-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_3_0".dir   = "0_3_0";
  inputs."nimqml-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_3_0".ref   = "master";
  inputs."nimqml-0_3_0".repo  = "nimqml";
  inputs."nimqml-0_3_0".type  = "github";
  inputs."nimqml-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_4_5".dir   = "0_4_5";
  inputs."nimqml-0_4_5".owner = "nim-nix-pkgs";
  inputs."nimqml-0_4_5".ref   = "master";
  inputs."nimqml-0_4_5".repo  = "nimqml";
  inputs."nimqml-0_4_5".type  = "github";
  inputs."nimqml-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_4_6".dir   = "0_4_6";
  inputs."nimqml-0_4_6".owner = "nim-nix-pkgs";
  inputs."nimqml-0_4_6".ref   = "master";
  inputs."nimqml-0_4_6".repo  = "nimqml";
  inputs."nimqml-0_4_6".type  = "github";
  inputs."nimqml-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_4_7".dir   = "0_4_7";
  inputs."nimqml-0_4_7".owner = "nim-nix-pkgs";
  inputs."nimqml-0_4_7".ref   = "master";
  inputs."nimqml-0_4_7".repo  = "nimqml";
  inputs."nimqml-0_4_7".type  = "github";
  inputs."nimqml-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_4_8".dir   = "0_4_8";
  inputs."nimqml-0_4_8".owner = "nim-nix-pkgs";
  inputs."nimqml-0_4_8".ref   = "master";
  inputs."nimqml-0_4_8".repo  = "nimqml";
  inputs."nimqml-0_4_8".type  = "github";
  inputs."nimqml-0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_5_0".dir   = "0_5_0";
  inputs."nimqml-0_5_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_5_0".ref   = "master";
  inputs."nimqml-0_5_0".repo  = "nimqml";
  inputs."nimqml-0_5_0".type  = "github";
  inputs."nimqml-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_5_1".dir   = "0_5_1";
  inputs."nimqml-0_5_1".owner = "nim-nix-pkgs";
  inputs."nimqml-0_5_1".ref   = "master";
  inputs."nimqml-0_5_1".repo  = "nimqml";
  inputs."nimqml-0_5_1".type  = "github";
  inputs."nimqml-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_5_2".dir   = "0_5_2";
  inputs."nimqml-0_5_2".owner = "nim-nix-pkgs";
  inputs."nimqml-0_5_2".ref   = "master";
  inputs."nimqml-0_5_2".repo  = "nimqml";
  inputs."nimqml-0_5_2".type  = "github";
  inputs."nimqml-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_6_0".dir   = "0_6_0";
  inputs."nimqml-0_6_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_6_0".ref   = "master";
  inputs."nimqml-0_6_0".repo  = "nimqml";
  inputs."nimqml-0_6_0".type  = "github";
  inputs."nimqml-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_0".dir   = "0_7_0";
  inputs."nimqml-0_7_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_0".ref   = "master";
  inputs."nimqml-0_7_0".repo  = "nimqml";
  inputs."nimqml-0_7_0".type  = "github";
  inputs."nimqml-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_1".dir   = "0_7_1";
  inputs."nimqml-0_7_1".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_1".ref   = "master";
  inputs."nimqml-0_7_1".repo  = "nimqml";
  inputs."nimqml-0_7_1".type  = "github";
  inputs."nimqml-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_2".dir   = "0_7_2";
  inputs."nimqml-0_7_2".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_2".ref   = "master";
  inputs."nimqml-0_7_2".repo  = "nimqml";
  inputs."nimqml-0_7_2".type  = "github";
  inputs."nimqml-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_3".dir   = "0_7_3";
  inputs."nimqml-0_7_3".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_3".ref   = "master";
  inputs."nimqml-0_7_3".repo  = "nimqml";
  inputs."nimqml-0_7_3".type  = "github";
  inputs."nimqml-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_4".dir   = "0_7_4";
  inputs."nimqml-0_7_4".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_4".ref   = "master";
  inputs."nimqml-0_7_4".repo  = "nimqml";
  inputs."nimqml-0_7_4".type  = "github";
  inputs."nimqml-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_5".dir   = "0_7_5";
  inputs."nimqml-0_7_5".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_5".ref   = "master";
  inputs."nimqml-0_7_5".repo  = "nimqml";
  inputs."nimqml-0_7_5".type  = "github";
  inputs."nimqml-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_6".dir   = "0_7_6";
  inputs."nimqml-0_7_6".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_6".ref   = "master";
  inputs."nimqml-0_7_6".repo  = "nimqml";
  inputs."nimqml-0_7_6".type  = "github";
  inputs."nimqml-0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_7_7".dir   = "0_7_7";
  inputs."nimqml-0_7_7".owner = "nim-nix-pkgs";
  inputs."nimqml-0_7_7".ref   = "master";
  inputs."nimqml-0_7_7".repo  = "nimqml";
  inputs."nimqml-0_7_7".type  = "github";
  inputs."nimqml-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_8_0".dir   = "0_8_0";
  inputs."nimqml-0_8_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_8_0".ref   = "master";
  inputs."nimqml-0_8_0".repo  = "nimqml";
  inputs."nimqml-0_8_0".type  = "github";
  inputs."nimqml-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_9_0".dir   = "0_9_0";
  inputs."nimqml-0_9_0".owner = "nim-nix-pkgs";
  inputs."nimqml-0_9_0".ref   = "master";
  inputs."nimqml-0_9_0".repo  = "nimqml";
  inputs."nimqml-0_9_0".type  = "github";
  inputs."nimqml-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_9_1".dir   = "0_9_1";
  inputs."nimqml-0_9_1".owner = "nim-nix-pkgs";
  inputs."nimqml-0_9_1".ref   = "master";
  inputs."nimqml-0_9_1".repo  = "nimqml";
  inputs."nimqml-0_9_1".type  = "github";
  inputs."nimqml-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_9_2".dir   = "0_9_2";
  inputs."nimqml-0_9_2".owner = "nim-nix-pkgs";
  inputs."nimqml-0_9_2".ref   = "master";
  inputs."nimqml-0_9_2".repo  = "nimqml";
  inputs."nimqml-0_9_2".type  = "github";
  inputs."nimqml-0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqml-0_9_3".dir   = "0_9_3";
  inputs."nimqml-0_9_3".owner = "nim-nix-pkgs";
  inputs."nimqml-0_9_3".ref   = "master";
  inputs."nimqml-0_9_3".repo  = "nimqml";
  inputs."nimqml-0_9_3".type  = "github";
  inputs."nimqml-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqml-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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