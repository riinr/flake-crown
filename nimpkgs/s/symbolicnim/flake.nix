{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."symbolicnim-master".url = "path:./master";
  inputs."symbolicnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_1".url = "path:./v0_1";
  inputs."symbolicnim-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_1_1".url = "path:./v0_1_1";
  inputs."symbolicnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_0".url = "path:./v0_2_0";
  inputs."symbolicnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_1".url = "path:./v0_2_1";
  inputs."symbolicnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_2".url = "path:./v0_2_2";
  inputs."symbolicnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_3".url = "path:./v0_2_3";
  inputs."symbolicnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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