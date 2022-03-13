{
  description = ''Hash Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hashlib-master".dir   = "master";
  inputs."hashlib-master".owner = "nim-nix-pkgs";
  inputs."hashlib-master".ref   = "master";
  inputs."hashlib-master".repo  = "hashlib";
  inputs."hashlib-master".type  = "github";
  inputs."hashlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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