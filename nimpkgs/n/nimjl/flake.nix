{
  description = ''Nim Julia bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimjl-master".dir   = "master";
  inputs."nimjl-master".owner = "nim-nix-pkgs";
  inputs."nimjl-master".ref   = "master";
  inputs."nimjl-master".repo  = "nimjl";
  inputs."nimjl-master".type  = "github";
  inputs."nimjl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_3_0".dir   = "v0_3_0";
  inputs."nimjl-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_3_0".ref   = "master";
  inputs."nimjl-v0_3_0".repo  = "nimjl";
  inputs."nimjl-v0_3_0".type  = "github";
  inputs."nimjl-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_0".dir   = "v0_4_0";
  inputs."nimjl-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_0".ref   = "master";
  inputs."nimjl-v0_4_0".repo  = "nimjl";
  inputs."nimjl-v0_4_0".type  = "github";
  inputs."nimjl-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_1".dir   = "v0_4_1";
  inputs."nimjl-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_1".ref   = "master";
  inputs."nimjl-v0_4_1".repo  = "nimjl";
  inputs."nimjl-v0_4_1".type  = "github";
  inputs."nimjl-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_2".dir   = "v0_4_2";
  inputs."nimjl-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_2".ref   = "master";
  inputs."nimjl-v0_4_2".repo  = "nimjl";
  inputs."nimjl-v0_4_2".type  = "github";
  inputs."nimjl-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_3".dir   = "v0_4_3";
  inputs."nimjl-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_3".ref   = "master";
  inputs."nimjl-v0_4_3".repo  = "nimjl";
  inputs."nimjl-v0_4_3".type  = "github";
  inputs."nimjl-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_4".dir   = "v0_4_4";
  inputs."nimjl-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_4".ref   = "master";
  inputs."nimjl-v0_4_4".repo  = "nimjl";
  inputs."nimjl-v0_4_4".type  = "github";
  inputs."nimjl-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_5".dir   = "v0_4_5";
  inputs."nimjl-v0_4_5".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_4_5".ref   = "master";
  inputs."nimjl-v0_4_5".repo  = "nimjl";
  inputs."nimjl-v0_4_5".type  = "github";
  inputs."nimjl-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_0".dir   = "v0_5_0";
  inputs."nimjl-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_0".ref   = "master";
  inputs."nimjl-v0_5_0".repo  = "nimjl";
  inputs."nimjl-v0_5_0".type  = "github";
  inputs."nimjl-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_1".dir   = "v0_5_1";
  inputs."nimjl-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_1".ref   = "master";
  inputs."nimjl-v0_5_1".repo  = "nimjl";
  inputs."nimjl-v0_5_1".type  = "github";
  inputs."nimjl-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_2".dir   = "v0_5_2";
  inputs."nimjl-v0_5_2".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_2".ref   = "master";
  inputs."nimjl-v0_5_2".repo  = "nimjl";
  inputs."nimjl-v0_5_2".type  = "github";
  inputs."nimjl-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_3".dir   = "v0_5_3";
  inputs."nimjl-v0_5_3".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_3".ref   = "master";
  inputs."nimjl-v0_5_3".repo  = "nimjl";
  inputs."nimjl-v0_5_3".type  = "github";
  inputs."nimjl-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_4".dir   = "v0_5_4";
  inputs."nimjl-v0_5_4".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_4".ref   = "master";
  inputs."nimjl-v0_5_4".repo  = "nimjl";
  inputs."nimjl-v0_5_4".type  = "github";
  inputs."nimjl-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_5".dir   = "v0_5_5";
  inputs."nimjl-v0_5_5".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_5".ref   = "master";
  inputs."nimjl-v0_5_5".repo  = "nimjl";
  inputs."nimjl-v0_5_5".type  = "github";
  inputs."nimjl-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_6".dir   = "v0_5_6";
  inputs."nimjl-v0_5_6".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_6".ref   = "master";
  inputs."nimjl-v0_5_6".repo  = "nimjl";
  inputs."nimjl-v0_5_6".type  = "github";
  inputs."nimjl-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_7".dir   = "v0_5_7";
  inputs."nimjl-v0_5_7".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_7".ref   = "master";
  inputs."nimjl-v0_5_7".repo  = "nimjl";
  inputs."nimjl-v0_5_7".type  = "github";
  inputs."nimjl-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_8".dir   = "v0_5_8";
  inputs."nimjl-v0_5_8".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_8".ref   = "master";
  inputs."nimjl-v0_5_8".repo  = "nimjl";
  inputs."nimjl-v0_5_8".type  = "github";
  inputs."nimjl-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_9".dir   = "v0_5_9";
  inputs."nimjl-v0_5_9".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_5_9".ref   = "master";
  inputs."nimjl-v0_5_9".repo  = "nimjl";
  inputs."nimjl-v0_5_9".type  = "github";
  inputs."nimjl-v0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_0".dir   = "v0_6_0";
  inputs."nimjl-v0_6_0".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_6_0".ref   = "master";
  inputs."nimjl-v0_6_0".repo  = "nimjl";
  inputs."nimjl-v0_6_0".type  = "github";
  inputs."nimjl-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_1".dir   = "v0_6_1";
  inputs."nimjl-v0_6_1".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_6_1".ref   = "master";
  inputs."nimjl-v0_6_1".repo  = "nimjl";
  inputs."nimjl-v0_6_1".type  = "github";
  inputs."nimjl-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_2".dir   = "v0_6_2";
  inputs."nimjl-v0_6_2".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_6_2".ref   = "master";
  inputs."nimjl-v0_6_2".repo  = "nimjl";
  inputs."nimjl-v0_6_2".type  = "github";
  inputs."nimjl-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_3".dir   = "v0_6_3";
  inputs."nimjl-v0_6_3".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_6_3".ref   = "master";
  inputs."nimjl-v0_6_3".repo  = "nimjl";
  inputs."nimjl-v0_6_3".type  = "github";
  inputs."nimjl-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_7_0".dir   = "v0_7_0";
  inputs."nimjl-v0_7_0".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_7_0".ref   = "master";
  inputs."nimjl-v0_7_0".repo  = "nimjl";
  inputs."nimjl-v0_7_0".type  = "github";
  inputs."nimjl-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_7_1".dir   = "v0_7_1";
  inputs."nimjl-v0_7_1".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_7_1".ref   = "master";
  inputs."nimjl-v0_7_1".repo  = "nimjl";
  inputs."nimjl-v0_7_1".type  = "github";
  inputs."nimjl-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_7_2".dir   = "v0_7_2";
  inputs."nimjl-v0_7_2".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_7_2".ref   = "master";
  inputs."nimjl-v0_7_2".repo  = "nimjl";
  inputs."nimjl-v0_7_2".type  = "github";
  inputs."nimjl-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_7_3".dir   = "v0_7_3";
  inputs."nimjl-v0_7_3".owner = "nim-nix-pkgs";
  inputs."nimjl-v0_7_3".ref   = "master";
  inputs."nimjl-v0_7_3".repo  = "nimjl";
  inputs."nimjl-v0_7_3".type  = "github";
  inputs."nimjl-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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