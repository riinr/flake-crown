{
  description = ''Utils to work with javascript'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsutils-master".dir   = "master";
  inputs."jsutils-master".owner = "nim-nix-pkgs";
  inputs."jsutils-master".ref   = "master";
  inputs."jsutils-master".repo  = "jsutils";
  inputs."jsutils-master".type  = "github";
  inputs."jsutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_1_1".dir   = "0_1_1";
  inputs."jsutils-0_1_1".owner = "nim-nix-pkgs";
  inputs."jsutils-0_1_1".ref   = "master";
  inputs."jsutils-0_1_1".repo  = "jsutils";
  inputs."jsutils-0_1_1".type  = "github";
  inputs."jsutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_1_2".dir   = "0_1_2";
  inputs."jsutils-0_1_2".owner = "nim-nix-pkgs";
  inputs."jsutils-0_1_2".ref   = "master";
  inputs."jsutils-0_1_2".repo  = "jsutils";
  inputs."jsutils-0_1_2".type  = "github";
  inputs."jsutils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_0".dir   = "0_2_0";
  inputs."jsutils-0_2_0".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_0".ref   = "master";
  inputs."jsutils-0_2_0".repo  = "jsutils";
  inputs."jsutils-0_2_0".type  = "github";
  inputs."jsutils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_1".dir   = "0_2_1";
  inputs."jsutils-0_2_1".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_1".ref   = "master";
  inputs."jsutils-0_2_1".repo  = "jsutils";
  inputs."jsutils-0_2_1".type  = "github";
  inputs."jsutils-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_2".dir   = "0_2_2";
  inputs."jsutils-0_2_2".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_2".ref   = "master";
  inputs."jsutils-0_2_2".repo  = "jsutils";
  inputs."jsutils-0_2_2".type  = "github";
  inputs."jsutils-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_3".dir   = "0_2_3";
  inputs."jsutils-0_2_3".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_3".ref   = "master";
  inputs."jsutils-0_2_3".repo  = "jsutils";
  inputs."jsutils-0_2_3".type  = "github";
  inputs."jsutils-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_4".dir   = "0_2_4";
  inputs."jsutils-0_2_4".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_4".ref   = "master";
  inputs."jsutils-0_2_4".repo  = "jsutils";
  inputs."jsutils-0_2_4".type  = "github";
  inputs."jsutils-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_5".dir   = "0_2_5";
  inputs."jsutils-0_2_5".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_5".ref   = "master";
  inputs."jsutils-0_2_5".repo  = "jsutils";
  inputs."jsutils-0_2_5".type  = "github";
  inputs."jsutils-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_6".dir   = "0_2_6";
  inputs."jsutils-0_2_6".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_6".ref   = "master";
  inputs."jsutils-0_2_6".repo  = "jsutils";
  inputs."jsutils-0_2_6".type  = "github";
  inputs."jsutils-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_7".dir   = "0_2_7";
  inputs."jsutils-0_2_7".owner = "nim-nix-pkgs";
  inputs."jsutils-0_2_7".ref   = "master";
  inputs."jsutils-0_2_7".repo  = "jsutils";
  inputs."jsutils-0_2_7".type  = "github";
  inputs."jsutils-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-v0_1_0".dir   = "v0_1_0";
  inputs."jsutils-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jsutils-v0_1_0".ref   = "master";
  inputs."jsutils-v0_1_0".repo  = "jsutils";
  inputs."jsutils-v0_1_0".type  = "github";
  inputs."jsutils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-v0_2_3".dir   = "v0_2_3";
  inputs."jsutils-v0_2_3".owner = "nim-nix-pkgs";
  inputs."jsutils-v0_2_3".ref   = "master";
  inputs."jsutils-v0_2_3".repo  = "jsutils";
  inputs."jsutils-v0_2_3".type  = "github";
  inputs."jsutils-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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