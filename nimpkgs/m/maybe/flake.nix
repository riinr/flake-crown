{
  description = ''basic monadic maybe type for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."maybe-master".dir   = "master";
  inputs."maybe-master".owner = "nim-nix-pkgs";
  inputs."maybe-master".ref   = "master";
  inputs."maybe-master".repo  = "maybe";
  inputs."maybe-master".type  = "github";
  inputs."maybe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-1_0".dir   = "1_0";
  inputs."maybe-1_0".owner = "nim-nix-pkgs";
  inputs."maybe-1_0".ref   = "master";
  inputs."maybe-1_0".repo  = "maybe";
  inputs."maybe-1_0".type  = "github";
  inputs."maybe-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-2_0".dir   = "2_0";
  inputs."maybe-2_0".owner = "nim-nix-pkgs";
  inputs."maybe-2_0".ref   = "master";
  inputs."maybe-2_0".repo  = "maybe";
  inputs."maybe-2_0".type  = "github";
  inputs."maybe-2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-2_2".dir   = "2_2";
  inputs."maybe-2_2".owner = "nim-nix-pkgs";
  inputs."maybe-2_2".ref   = "master";
  inputs."maybe-2_2".repo  = "maybe";
  inputs."maybe-2_2".type  = "github";
  inputs."maybe-2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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