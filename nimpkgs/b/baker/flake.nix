{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."baker-master".dir   = "master";
  inputs."baker-master".owner = "nim-nix-pkgs";
  inputs."baker-master".ref   = "master";
  inputs."baker-master".repo  = "baker";
  inputs."baker-master".type  = "github";
  inputs."baker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_6".dir   = "v1_6";
  inputs."baker-v1_6".owner = "nim-nix-pkgs";
  inputs."baker-v1_6".ref   = "master";
  inputs."baker-v1_6".repo  = "baker";
  inputs."baker-v1_6".type  = "github";
  inputs."baker-v1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8".dir   = "v1_8";
  inputs."baker-v1_8".owner = "nim-nix-pkgs";
  inputs."baker-v1_8".ref   = "master";
  inputs."baker-v1_8".repo  = "baker";
  inputs."baker-v1_8".type  = "github";
  inputs."baker-v1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8_2".dir   = "v1_8_2";
  inputs."baker-v1_8_2".owner = "nim-nix-pkgs";
  inputs."baker-v1_8_2".ref   = "master";
  inputs."baker-v1_8_2".repo  = "baker";
  inputs."baker-v1_8_2".type  = "github";
  inputs."baker-v1_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8_3".dir   = "v1_8_3";
  inputs."baker-v1_8_3".owner = "nim-nix-pkgs";
  inputs."baker-v1_8_3".ref   = "master";
  inputs."baker-v1_8_3".repo  = "baker";
  inputs."baker-v1_8_3".type  = "github";
  inputs."baker-v1_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_0".dir   = "v2_0_0";
  inputs."baker-v2_0_0".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_0".ref   = "master";
  inputs."baker-v2_0_0".repo  = "baker";
  inputs."baker-v2_0_0".type  = "github";
  inputs."baker-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_1".dir   = "v2_0_1";
  inputs."baker-v2_0_1".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_1".ref   = "master";
  inputs."baker-v2_0_1".repo  = "baker";
  inputs."baker-v2_0_1".type  = "github";
  inputs."baker-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_2".dir   = "v2_0_2";
  inputs."baker-v2_0_2".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_2".ref   = "master";
  inputs."baker-v2_0_2".repo  = "baker";
  inputs."baker-v2_0_2".type  = "github";
  inputs."baker-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_3".dir   = "v2_0_3";
  inputs."baker-v2_0_3".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_3".ref   = "master";
  inputs."baker-v2_0_3".repo  = "baker";
  inputs."baker-v2_0_3".type  = "github";
  inputs."baker-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_4".dir   = "v2_0_4";
  inputs."baker-v2_0_4".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_4".ref   = "master";
  inputs."baker-v2_0_4".repo  = "baker";
  inputs."baker-v2_0_4".type  = "github";
  inputs."baker-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_5".dir   = "v2_0_5";
  inputs."baker-v2_0_5".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_5".ref   = "master";
  inputs."baker-v2_0_5".repo  = "baker";
  inputs."baker-v2_0_5".type  = "github";
  inputs."baker-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_7".dir   = "v2_0_7";
  inputs."baker-v2_0_7".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_7".ref   = "master";
  inputs."baker-v2_0_7".repo  = "baker";
  inputs."baker-v2_0_7".type  = "github";
  inputs."baker-v2_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_9".dir   = "v2_0_9";
  inputs."baker-v2_0_9".owner = "nim-nix-pkgs";
  inputs."baker-v2_0_9".ref   = "master";
  inputs."baker-v2_0_9".repo  = "baker";
  inputs."baker-v2_0_9".type  = "github";
  inputs."baker-v2_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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