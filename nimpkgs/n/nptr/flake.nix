{
  description = ''Nim lang smart pointers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nptr-develop".dir   = "develop";
  inputs."nptr-develop".owner = "nim-nix-pkgs";
  inputs."nptr-develop".ref   = "master";
  inputs."nptr-develop".repo  = "nptr";
  inputs."nptr-develop".type  = "github";
  inputs."nptr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-main".dir   = "main";
  inputs."nptr-main".owner = "nim-nix-pkgs";
  inputs."nptr-main".ref   = "master";
  inputs."nptr-main".repo  = "nptr";
  inputs."nptr-main".type  = "github";
  inputs."nptr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_0".dir   = "v0_1_0";
  inputs."nptr-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_0".ref   = "master";
  inputs."nptr-v0_1_0".repo  = "nptr";
  inputs."nptr-v0_1_0".type  = "github";
  inputs."nptr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_1".dir   = "v0_1_1";
  inputs."nptr-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_1".ref   = "master";
  inputs."nptr-v0_1_1".repo  = "nptr";
  inputs."nptr-v0_1_1".type  = "github";
  inputs."nptr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_10".dir   = "v0_1_10";
  inputs."nptr-v0_1_10".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_10".ref   = "master";
  inputs."nptr-v0_1_10".repo  = "nptr";
  inputs."nptr-v0_1_10".type  = "github";
  inputs."nptr-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_2".dir   = "v0_1_2";
  inputs."nptr-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_2".ref   = "master";
  inputs."nptr-v0_1_2".repo  = "nptr";
  inputs."nptr-v0_1_2".type  = "github";
  inputs."nptr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_3".dir   = "v0_1_3";
  inputs."nptr-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_3".ref   = "master";
  inputs."nptr-v0_1_3".repo  = "nptr";
  inputs."nptr-v0_1_3".type  = "github";
  inputs."nptr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_4".dir   = "v0_1_4";
  inputs."nptr-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_4".ref   = "master";
  inputs."nptr-v0_1_4".repo  = "nptr";
  inputs."nptr-v0_1_4".type  = "github";
  inputs."nptr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_5".dir   = "v0_1_5";
  inputs."nptr-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_5".ref   = "master";
  inputs."nptr-v0_1_5".repo  = "nptr";
  inputs."nptr-v0_1_5".type  = "github";
  inputs."nptr-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_6".dir   = "v0_1_6";
  inputs."nptr-v0_1_6".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_6".ref   = "master";
  inputs."nptr-v0_1_6".repo  = "nptr";
  inputs."nptr-v0_1_6".type  = "github";
  inputs."nptr-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_7".dir   = "v0_1_7";
  inputs."nptr-v0_1_7".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_7".ref   = "master";
  inputs."nptr-v0_1_7".repo  = "nptr";
  inputs."nptr-v0_1_7".type  = "github";
  inputs."nptr-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_8".dir   = "v0_1_8";
  inputs."nptr-v0_1_8".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_8".ref   = "master";
  inputs."nptr-v0_1_8".repo  = "nptr";
  inputs."nptr-v0_1_8".type  = "github";
  inputs."nptr-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_9".dir   = "v0_1_9";
  inputs."nptr-v0_1_9".owner = "nim-nix-pkgs";
  inputs."nptr-v0_1_9".ref   = "master";
  inputs."nptr-v0_1_9".repo  = "nptr";
  inputs."nptr-v0_1_9".type  = "github";
  inputs."nptr-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_2_0".dir   = "v0_2_0";
  inputs."nptr-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nptr-v0_2_0".ref   = "master";
  inputs."nptr-v0_2_0".repo  = "nptr";
  inputs."nptr-v0_2_0".type  = "github";
  inputs."nptr-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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