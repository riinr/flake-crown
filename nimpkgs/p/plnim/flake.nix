{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plnim-master".dir   = "master";
  inputs."plnim-master".owner = "nim-nix-pkgs";
  inputs."plnim-master".ref   = "master";
  inputs."plnim-master".repo  = "plnim";
  inputs."plnim-master".type  = "github";
  inputs."plnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_0".dir   = "v0_1_0";
  inputs."plnim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_0".ref   = "master";
  inputs."plnim-v0_1_0".repo  = "plnim";
  inputs."plnim-v0_1_0".type  = "github";
  inputs."plnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_1".dir   = "v0_1_1";
  inputs."plnim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_1".ref   = "master";
  inputs."plnim-v0_1_1".repo  = "plnim";
  inputs."plnim-v0_1_1".type  = "github";
  inputs."plnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_2".dir   = "v0_1_2";
  inputs."plnim-v0_1_2".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_2".ref   = "master";
  inputs."plnim-v0_1_2".repo  = "plnim";
  inputs."plnim-v0_1_2".type  = "github";
  inputs."plnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_3".dir   = "v0_1_3";
  inputs."plnim-v0_1_3".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_3".ref   = "master";
  inputs."plnim-v0_1_3".repo  = "plnim";
  inputs."plnim-v0_1_3".type  = "github";
  inputs."plnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_4".dir   = "v0_1_4";
  inputs."plnim-v0_1_4".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_4".ref   = "master";
  inputs."plnim-v0_1_4".repo  = "plnim";
  inputs."plnim-v0_1_4".type  = "github";
  inputs."plnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_5".dir   = "v0_1_5";
  inputs."plnim-v0_1_5".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_5".ref   = "master";
  inputs."plnim-v0_1_5".repo  = "plnim";
  inputs."plnim-v0_1_5".type  = "github";
  inputs."plnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_1_6".dir   = "v0_1_6";
  inputs."plnim-v0_1_6".owner = "nim-nix-pkgs";
  inputs."plnim-v0_1_6".ref   = "master";
  inputs."plnim-v0_1_6".repo  = "plnim";
  inputs."plnim-v0_1_6".type  = "github";
  inputs."plnim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plnim-v0_2_0".dir   = "v0_2_0";
  inputs."plnim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."plnim-v0_2_0".ref   = "master";
  inputs."plnim-v0_2_0".repo  = "plnim";
  inputs."plnim-v0_2_0".type  = "github";
  inputs."plnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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