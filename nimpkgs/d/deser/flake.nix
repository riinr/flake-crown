{
  description = ''De/serialization library for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deser-master".dir   = "master";
  inputs."deser-master".owner = "nim-nix-pkgs";
  inputs."deser-master".ref   = "master";
  inputs."deser-master".repo  = "deser";
  inputs."deser-master".type  = "github";
  inputs."deser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_0".dir   = "v0_1_0";
  inputs."deser-v0_1_0".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_0".ref   = "master";
  inputs."deser-v0_1_0".repo  = "deser";
  inputs."deser-v0_1_0".type  = "github";
  inputs."deser-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1".dir   = "v0_1_1";
  inputs."deser-v0_1_1".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_1".ref   = "master";
  inputs."deser-v0_1_1".repo  = "deser";
  inputs."deser-v0_1_1".type  = "github";
  inputs."deser-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1-alpha_1".dir   = "v0_1_1-alpha_1";
  inputs."deser-v0_1_1-alpha_1".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_1-alpha_1".ref   = "master";
  inputs."deser-v0_1_1-alpha_1".repo  = "deser";
  inputs."deser-v0_1_1-alpha_1".type  = "github";
  inputs."deser-v0_1_1-alpha_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1-alpha_2".dir   = "v0_1_1-alpha_2";
  inputs."deser-v0_1_1-alpha_2".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_1-alpha_2".ref   = "master";
  inputs."deser-v0_1_1-alpha_2".repo  = "deser";
  inputs."deser-v0_1_1-alpha_2".type  = "github";
  inputs."deser-v0_1_1-alpha_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_2".dir   = "v0_1_2";
  inputs."deser-v0_1_2".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_2".ref   = "master";
  inputs."deser-v0_1_2".repo  = "deser";
  inputs."deser-v0_1_2".type  = "github";
  inputs."deser-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_3".dir   = "v0_1_3";
  inputs."deser-v0_1_3".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_3".ref   = "master";
  inputs."deser-v0_1_3".repo  = "deser";
  inputs."deser-v0_1_3".type  = "github";
  inputs."deser-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_4".dir   = "v0_1_4";
  inputs."deser-v0_1_4".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_4".ref   = "master";
  inputs."deser-v0_1_4".repo  = "deser";
  inputs."deser-v0_1_4".type  = "github";
  inputs."deser-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_5".dir   = "v0_1_5";
  inputs."deser-v0_1_5".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_5".ref   = "master";
  inputs."deser-v0_1_5".repo  = "deser";
  inputs."deser-v0_1_5".type  = "github";
  inputs."deser-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_7".dir   = "v0_1_7";
  inputs."deser-v0_1_7".owner = "nim-nix-pkgs";
  inputs."deser-v0_1_7".ref   = "master";
  inputs."deser-v0_1_7".repo  = "deser";
  inputs."deser-v0_1_7".type  = "github";
  inputs."deser-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_2_0".dir   = "v0_2_0";
  inputs."deser-v0_2_0".owner = "nim-nix-pkgs";
  inputs."deser-v0_2_0".ref   = "master";
  inputs."deser-v0_2_0".repo  = "deser";
  inputs."deser-v0_2_0".type  = "github";
  inputs."deser-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_2_1".dir   = "v0_2_1";
  inputs."deser-v0_2_1".owner = "nim-nix-pkgs";
  inputs."deser-v0_2_1".ref   = "master";
  inputs."deser-v0_2_1".repo  = "deser";
  inputs."deser-v0_2_1".type  = "github";
  inputs."deser-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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