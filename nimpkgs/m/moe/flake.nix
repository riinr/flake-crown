{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moe-develop".dir   = "develop";
  inputs."moe-develop".owner = "nim-nix-pkgs";
  inputs."moe-develop".ref   = "master";
  inputs."moe-develop".repo  = "moe";
  inputs."moe-develop".type  = "github";
  inputs."moe-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-master".dir   = "master";
  inputs."moe-master".owner = "nim-nix-pkgs";
  inputs."moe-master".ref   = "master";
  inputs."moe-master".repo  = "moe";
  inputs."moe-master".type  = "github";
  inputs."moe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_1".dir   = "v0_0_1";
  inputs."moe-v0_0_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_1".ref   = "master";
  inputs."moe-v0_0_1".repo  = "moe";
  inputs."moe-v0_0_1".type  = "github";
  inputs."moe-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_2".dir   = "v0_0_2";
  inputs."moe-v0_0_2".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_2".ref   = "master";
  inputs."moe-v0_0_2".repo  = "moe";
  inputs."moe-v0_0_2".type  = "github";
  inputs."moe-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_3".dir   = "v0_0_3";
  inputs."moe-v0_0_3".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_3".ref   = "master";
  inputs."moe-v0_0_3".repo  = "moe";
  inputs."moe-v0_0_3".type  = "github";
  inputs."moe-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_35".dir   = "v0_0_35";
  inputs."moe-v0_0_35".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_35".ref   = "master";
  inputs."moe-v0_0_35".repo  = "moe";
  inputs."moe-v0_0_35".type  = "github";
  inputs."moe-v0_0_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_40".dir   = "v0_0_40";
  inputs."moe-v0_0_40".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_40".ref   = "master";
  inputs."moe-v0_0_40".repo  = "moe";
  inputs."moe-v0_0_40".type  = "github";
  inputs."moe-v0_0_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_50".dir   = "v0_0_50";
  inputs."moe-v0_0_50".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_50".ref   = "master";
  inputs."moe-v0_0_50".repo  = "moe";
  inputs."moe-v0_0_50".type  = "github";
  inputs."moe-v0_0_50".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_50".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_60".dir   = "v0_0_60";
  inputs."moe-v0_0_60".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_60".ref   = "master";
  inputs."moe-v0_0_60".repo  = "moe";
  inputs."moe-v0_0_60".type  = "github";
  inputs."moe-v0_0_60".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_60".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_61".dir   = "v0_0_61";
  inputs."moe-v0_0_61".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_61".ref   = "master";
  inputs."moe-v0_0_61".repo  = "moe";
  inputs."moe-v0_0_61".type  = "github";
  inputs."moe-v0_0_61".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_61".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_70".dir   = "v0_0_70";
  inputs."moe-v0_0_70".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_70".ref   = "master";
  inputs."moe-v0_0_70".repo  = "moe";
  inputs."moe-v0_0_70".type  = "github";
  inputs."moe-v0_0_70".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_70".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_80".dir   = "v0_0_80";
  inputs."moe-v0_0_80".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_80".ref   = "master";
  inputs."moe-v0_0_80".repo  = "moe";
  inputs."moe-v0_0_80".type  = "github";
  inputs."moe-v0_0_80".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_80".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_81".dir   = "v0_0_81";
  inputs."moe-v0_0_81".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_81".ref   = "master";
  inputs."moe-v0_0_81".repo  = "moe";
  inputs."moe-v0_0_81".type  = "github";
  inputs."moe-v0_0_81".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_81".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_82".dir   = "v0_0_82";
  inputs."moe-v0_0_82".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_82".ref   = "master";
  inputs."moe-v0_0_82".repo  = "moe";
  inputs."moe-v0_0_82".type  = "github";
  inputs."moe-v0_0_82".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_82".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_83".dir   = "v0_0_83";
  inputs."moe-v0_0_83".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_83".ref   = "master";
  inputs."moe-v0_0_83".repo  = "moe";
  inputs."moe-v0_0_83".type  = "github";
  inputs."moe-v0_0_83".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_83".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_84".dir   = "v0_0_84";
  inputs."moe-v0_0_84".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_84".ref   = "master";
  inputs."moe-v0_0_84".repo  = "moe";
  inputs."moe-v0_0_84".type  = "github";
  inputs."moe-v0_0_84".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_84".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_90".dir   = "v0_0_90";
  inputs."moe-v0_0_90".owner = "nim-nix-pkgs";
  inputs."moe-v0_0_90".ref   = "master";
  inputs."moe-v0_0_90".repo  = "moe";
  inputs."moe-v0_0_90".type  = "github";
  inputs."moe-v0_0_90".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_90".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_0".dir   = "v0_1_0";
  inputs."moe-v0_1_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_0".ref   = "master";
  inputs."moe-v0_1_0".repo  = "moe";
  inputs."moe-v0_1_0".type  = "github";
  inputs."moe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_1".dir   = "v0_1_1";
  inputs."moe-v0_1_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_1".ref   = "master";
  inputs."moe-v0_1_1".repo  = "moe";
  inputs."moe-v0_1_1".type  = "github";
  inputs."moe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_2".dir   = "v0_1_2";
  inputs."moe-v0_1_2".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_2".ref   = "master";
  inputs."moe-v0_1_2".repo  = "moe";
  inputs."moe-v0_1_2".type  = "github";
  inputs."moe-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_3".dir   = "v0_1_3";
  inputs."moe-v0_1_3".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_3".ref   = "master";
  inputs."moe-v0_1_3".repo  = "moe";
  inputs."moe-v0_1_3".type  = "github";
  inputs."moe-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_4".dir   = "v0_1_4";
  inputs."moe-v0_1_4".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_4".ref   = "master";
  inputs."moe-v0_1_4".repo  = "moe";
  inputs."moe-v0_1_4".type  = "github";
  inputs."moe-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_5".dir   = "v0_1_5";
  inputs."moe-v0_1_5".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_5".ref   = "master";
  inputs."moe-v0_1_5".repo  = "moe";
  inputs."moe-v0_1_5".type  = "github";
  inputs."moe-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_6".dir   = "v0_1_6";
  inputs."moe-v0_1_6".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_6".ref   = "master";
  inputs."moe-v0_1_6".repo  = "moe";
  inputs."moe-v0_1_6".type  = "github";
  inputs."moe-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_7".dir   = "v0_1_7";
  inputs."moe-v0_1_7".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_7".ref   = "master";
  inputs."moe-v0_1_7".repo  = "moe";
  inputs."moe-v0_1_7".type  = "github";
  inputs."moe-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_8".dir   = "v0_1_8";
  inputs."moe-v0_1_8".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_8".ref   = "master";
  inputs."moe-v0_1_8".repo  = "moe";
  inputs."moe-v0_1_8".type  = "github";
  inputs."moe-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_9".dir   = "v0_1_9";
  inputs."moe-v0_1_9".owner = "nim-nix-pkgs";
  inputs."moe-v0_1_9".ref   = "master";
  inputs."moe-v0_1_9".repo  = "moe";
  inputs."moe-v0_1_9".type  = "github";
  inputs."moe-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0".dir   = "v0_2_0";
  inputs."moe-v0_2_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_0".ref   = "master";
  inputs."moe-v0_2_0".repo  = "moe";
  inputs."moe-v0_2_0".type  = "github";
  inputs."moe-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0_1".dir   = "v0_2_0_1";
  inputs."moe-v0_2_0_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_0_1".ref   = "master";
  inputs."moe-v0_2_0_1".repo  = "moe";
  inputs."moe-v0_2_0_1".type  = "github";
  inputs."moe-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0_2".dir   = "v0_2_0_2";
  inputs."moe-v0_2_0_2".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_0_2".ref   = "master";
  inputs."moe-v0_2_0_2".repo  = "moe";
  inputs."moe-v0_2_0_2".type  = "github";
  inputs."moe-v0_2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_1".dir   = "v0_2_1";
  inputs."moe-v0_2_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_1".ref   = "master";
  inputs."moe-v0_2_1".repo  = "moe";
  inputs."moe-v0_2_1".type  = "github";
  inputs."moe-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_2".dir   = "v0_2_2";
  inputs."moe-v0_2_2".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_2".ref   = "master";
  inputs."moe-v0_2_2".repo  = "moe";
  inputs."moe-v0_2_2".type  = "github";
  inputs."moe-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_2_1".dir   = "v0_2_2_1";
  inputs."moe-v0_2_2_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_2_1".ref   = "master";
  inputs."moe-v0_2_2_1".repo  = "moe";
  inputs."moe-v0_2_2_1".type  = "github";
  inputs."moe-v0_2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_3".dir   = "v0_2_3";
  inputs."moe-v0_2_3".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_3".ref   = "master";
  inputs."moe-v0_2_3".repo  = "moe";
  inputs."moe-v0_2_3".type  = "github";
  inputs."moe-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_3_1".dir   = "v0_2_3_1";
  inputs."moe-v0_2_3_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_3_1".ref   = "master";
  inputs."moe-v0_2_3_1".repo  = "moe";
  inputs."moe-v0_2_3_1".type  = "github";
  inputs."moe-v0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_4".dir   = "v0_2_4";
  inputs."moe-v0_2_4".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_4".ref   = "master";
  inputs."moe-v0_2_4".repo  = "moe";
  inputs."moe-v0_2_4".type  = "github";
  inputs."moe-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_4_1".dir   = "v0_2_4_1";
  inputs."moe-v0_2_4_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_4_1".ref   = "master";
  inputs."moe-v0_2_4_1".repo  = "moe";
  inputs."moe-v0_2_4_1".type  = "github";
  inputs."moe-v0_2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_5_0".dir   = "v0_2_5_0";
  inputs."moe-v0_2_5_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_5_0".ref   = "master";
  inputs."moe-v0_2_5_0".repo  = "moe";
  inputs."moe-v0_2_5_0".type  = "github";
  inputs."moe-v0_2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_5_1".dir   = "v0_2_5_1";
  inputs."moe-v0_2_5_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_5_1".ref   = "master";
  inputs."moe-v0_2_5_1".repo  = "moe";
  inputs."moe-v0_2_5_1".type  = "github";
  inputs."moe-v0_2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_6_0".dir   = "v0_2_6_0";
  inputs."moe-v0_2_6_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_6_0".ref   = "master";
  inputs."moe-v0_2_6_0".repo  = "moe";
  inputs."moe-v0_2_6_0".type  = "github";
  inputs."moe-v0_2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_6_1".dir   = "v0_2_6_1";
  inputs."moe-v0_2_6_1".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_6_1".ref   = "master";
  inputs."moe-v0_2_6_1".repo  = "moe";
  inputs."moe-v0_2_6_1".type  = "github";
  inputs."moe-v0_2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_7_0".dir   = "v0_2_7_0";
  inputs."moe-v0_2_7_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_7_0".ref   = "master";
  inputs."moe-v0_2_7_0".repo  = "moe";
  inputs."moe-v0_2_7_0".type  = "github";
  inputs."moe-v0_2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_8_0".dir   = "v0_2_8_0";
  inputs."moe-v0_2_8_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_2_8_0".ref   = "master";
  inputs."moe-v0_2_8_0".repo  = "moe";
  inputs."moe-v0_2_8_0".type  = "github";
  inputs."moe-v0_2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_3_0".dir   = "v0_3_0";
  inputs."moe-v0_3_0".owner = "nim-nix-pkgs";
  inputs."moe-v0_3_0".ref   = "master";
  inputs."moe-v0_3_0".repo  = "moe";
  inputs."moe-v0_3_0".type  = "github";
  inputs."moe-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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