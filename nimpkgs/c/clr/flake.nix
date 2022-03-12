{
  description = ''Get information about colors and convert them in the command line'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clr-master".url = "path:./master";
  inputs."clr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_0".url = "path:./v0_1_0";
  inputs."clr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_1".url = "path:./v0_1_1";
  inputs."clr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_2".url = "path:./v0_1_2";
  inputs."clr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_3".url = "path:./v0_1_3";
  inputs."clr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v1_0_0".url = "path:./v1_0_0";
  inputs."clr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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