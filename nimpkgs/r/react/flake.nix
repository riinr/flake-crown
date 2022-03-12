{
  description = ''React.js bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."react-master".url = "path:./master";
  inputs."react-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_0".url = "path:./0_1_0";
  inputs."react-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_1".url = "path:./0_1_1";
  inputs."react-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_2".url = "path:./0_1_2";
  inputs."react-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_2_0".url = "path:./0_2_0";
  inputs."react-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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