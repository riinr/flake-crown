{
  description = ''A library for scientific computations in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."science-master".url = "path:./master";
  inputs."science-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."science-v0_2_2".url = "path:./v0_2_2";
  inputs."science-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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