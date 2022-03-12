{
  description = ''Wrapper-less C/C++ interop for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimline-master".url = "path:./master";
  inputs."nimline-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-0_1_1".url = "path:./0_1_1";
  inputs."nimline-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-0_1_3".url = "path:./0_1_3";
  inputs."nimline-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_0".url = "path:./v0_1_0";
  inputs."nimline-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_1".url = "path:./v0_1_1";
  inputs."nimline-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_2".url = "path:./v0_1_2";
  inputs."nimline-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_3".url = "path:./v0_1_3";
  inputs."nimline-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_4".url = "path:./v0_1_4";
  inputs."nimline-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_5".url = "path:./v0_1_5";
  inputs."nimline-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_6".url = "path:./v0_1_6";
  inputs."nimline-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_7".url = "path:./v0_1_7";
  inputs."nimline-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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