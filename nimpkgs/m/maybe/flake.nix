{
  description = ''basic monadic maybe type for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."maybe-master".url = "path:./master";
  inputs."maybe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-1_0".url = "path:./1_0";
  inputs."maybe-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-2_0".url = "path:./2_0";
  inputs."maybe-2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."maybe-2_2".url = "path:./2_2";
  inputs."maybe-2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."maybe-2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}