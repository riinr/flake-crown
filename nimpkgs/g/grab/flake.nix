{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grab-master".url = "path:./master";
  inputs."grab-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grab-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grab-v0_1_0".url = "path:./v0_1_0";
  inputs."grab-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grab-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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