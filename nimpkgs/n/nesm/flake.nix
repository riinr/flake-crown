{
  description = ''A macro for generating [de]serializers for given objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nesm-devel".dir   = "devel";
  inputs."nesm-devel".owner = "nim-nix-pkgs";
  inputs."nesm-devel".ref   = "master";
  inputs."nesm-devel".repo  = "nesm";
  inputs."nesm-devel".type  = "github";
  inputs."nesm-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-master".dir   = "master";
  inputs."nesm-master".owner = "nim-nix-pkgs";
  inputs."nesm-master".ref   = "master";
  inputs."nesm-master".repo  = "nesm";
  inputs."nesm-master".type  = "github";
  inputs."nesm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_1_0".dir   = "v0_1_0";
  inputs."nesm-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nesm-v0_1_0".ref   = "master";
  inputs."nesm-v0_1_0".repo  = "nesm";
  inputs."nesm-v0_1_0".type  = "github";
  inputs."nesm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_2_0".dir   = "v0_2_0";
  inputs."nesm-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nesm-v0_2_0".ref   = "master";
  inputs."nesm-v0_2_0".repo  = "nesm";
  inputs."nesm-v0_2_0".type  = "github";
  inputs."nesm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_0".dir   = "v0_3_0";
  inputs."nesm-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nesm-v0_3_0".ref   = "master";
  inputs."nesm-v0_3_0".repo  = "nesm";
  inputs."nesm-v0_3_0".type  = "github";
  inputs."nesm-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_1".dir   = "v0_3_1";
  inputs."nesm-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nesm-v0_3_1".ref   = "master";
  inputs."nesm-v0_3_1".repo  = "nesm";
  inputs."nesm-v0_3_1".type  = "github";
  inputs."nesm-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_2".dir   = "v0_3_2";
  inputs."nesm-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nesm-v0_3_2".ref   = "master";
  inputs."nesm-v0_3_2".repo  = "nesm";
  inputs."nesm-v0_3_2".type  = "github";
  inputs."nesm-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_0".dir   = "v0_4_0";
  inputs."nesm-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_0".ref   = "master";
  inputs."nesm-v0_4_0".repo  = "nesm";
  inputs."nesm-v0_4_0".type  = "github";
  inputs."nesm-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_1".dir   = "v0_4_1";
  inputs."nesm-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_1".ref   = "master";
  inputs."nesm-v0_4_1".repo  = "nesm";
  inputs."nesm-v0_4_1".type  = "github";
  inputs."nesm-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_10".dir   = "v0_4_10";
  inputs."nesm-v0_4_10".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_10".ref   = "master";
  inputs."nesm-v0_4_10".repo  = "nesm";
  inputs."nesm-v0_4_10".type  = "github";
  inputs."nesm-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_2".dir   = "v0_4_2";
  inputs."nesm-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_2".ref   = "master";
  inputs."nesm-v0_4_2".repo  = "nesm";
  inputs."nesm-v0_4_2".type  = "github";
  inputs."nesm-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_3".dir   = "v0_4_3";
  inputs."nesm-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_3".ref   = "master";
  inputs."nesm-v0_4_3".repo  = "nesm";
  inputs."nesm-v0_4_3".type  = "github";
  inputs."nesm-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_4".dir   = "v0_4_4";
  inputs."nesm-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_4".ref   = "master";
  inputs."nesm-v0_4_4".repo  = "nesm";
  inputs."nesm-v0_4_4".type  = "github";
  inputs."nesm-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_5".dir   = "v0_4_5";
  inputs."nesm-v0_4_5".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_5".ref   = "master";
  inputs."nesm-v0_4_5".repo  = "nesm";
  inputs."nesm-v0_4_5".type  = "github";
  inputs."nesm-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_6".dir   = "v0_4_6";
  inputs."nesm-v0_4_6".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_6".ref   = "master";
  inputs."nesm-v0_4_6".repo  = "nesm";
  inputs."nesm-v0_4_6".type  = "github";
  inputs."nesm-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_7".dir   = "v0_4_7";
  inputs."nesm-v0_4_7".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_7".ref   = "master";
  inputs."nesm-v0_4_7".repo  = "nesm";
  inputs."nesm-v0_4_7".type  = "github";
  inputs."nesm-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_8".dir   = "v0_4_8";
  inputs."nesm-v0_4_8".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_8".ref   = "master";
  inputs."nesm-v0_4_8".repo  = "nesm";
  inputs."nesm-v0_4_8".type  = "github";
  inputs."nesm-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_9".dir   = "v0_4_9";
  inputs."nesm-v0_4_9".owner = "nim-nix-pkgs";
  inputs."nesm-v0_4_9".ref   = "master";
  inputs."nesm-v0_4_9".repo  = "nesm";
  inputs."nesm-v0_4_9".type  = "github";
  inputs."nesm-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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