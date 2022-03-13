{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitty-master".dir   = "master";
  inputs."bitty-master".owner = "nim-nix-pkgs";
  inputs."bitty-master".ref   = "master";
  inputs."bitty-master".repo  = "bitty";
  inputs."bitty-master".type  = "github";
  inputs."bitty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_0".dir   = "0_1_0";
  inputs."bitty-0_1_0".owner = "nim-nix-pkgs";
  inputs."bitty-0_1_0".ref   = "master";
  inputs."bitty-0_1_0".repo  = "bitty";
  inputs."bitty-0_1_0".type  = "github";
  inputs."bitty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_1".dir   = "0_1_1";
  inputs."bitty-0_1_1".owner = "nim-nix-pkgs";
  inputs."bitty-0_1_1".ref   = "master";
  inputs."bitty-0_1_1".repo  = "bitty";
  inputs."bitty-0_1_1".type  = "github";
  inputs."bitty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_2".dir   = "0_1_2";
  inputs."bitty-0_1_2".owner = "nim-nix-pkgs";
  inputs."bitty-0_1_2".ref   = "master";
  inputs."bitty-0_1_2".repo  = "bitty";
  inputs."bitty-0_1_2".type  = "github";
  inputs."bitty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_3".dir   = "0_1_3";
  inputs."bitty-0_1_3".owner = "nim-nix-pkgs";
  inputs."bitty-0_1_3".ref   = "master";
  inputs."bitty-0_1_3".repo  = "bitty";
  inputs."bitty-0_1_3".type  = "github";
  inputs."bitty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_4".dir   = "0_1_4";
  inputs."bitty-0_1_4".owner = "nim-nix-pkgs";
  inputs."bitty-0_1_4".ref   = "master";
  inputs."bitty-0_1_4".repo  = "bitty";
  inputs."bitty-0_1_4".type  = "github";
  inputs."bitty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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