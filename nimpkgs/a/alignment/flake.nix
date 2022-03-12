{
  description = ''alignment is a library to align strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."alignment-master".url = "path:./master";
  inputs."alignment-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-1_0_0".url = "path:./1_0_0";
  inputs."alignment-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-1_1_0".url = "path:./1_1_0";
  inputs."alignment-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_1_1".url = "path:./v1_1_1";
  inputs."alignment-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_1_2".url = "path:./v1_1_2";
  inputs."alignment-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_2_0".url = "path:./v1_2_0";
  inputs."alignment-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_2_1".url = "path:./v1_2_1";
  inputs."alignment-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_3_0".url = "path:./v1_3_0";
  inputs."alignment-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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