{
  description = ''This is an implementation of Clojures persistent vectors in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."persvector-master".dir   = "master";
  inputs."persvector-master".owner = "nim-nix-pkgs";
  inputs."persvector-master".ref   = "master";
  inputs."persvector-master".repo  = "persvector";
  inputs."persvector-master".type  = "github";
  inputs."persvector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."persvector-v1_0_0".dir   = "v1_0_0";
  inputs."persvector-v1_0_0".owner = "nim-nix-pkgs";
  inputs."persvector-v1_0_0".ref   = "master";
  inputs."persvector-v1_0_0".repo  = "persvector";
  inputs."persvector-v1_0_0".type  = "github";
  inputs."persvector-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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