{
  description = ''A simple GUI front for Nimble.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimblegui-master".url = "path:./master";
  inputs."nimblegui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_1_2".url = "path:./v0_1_2";
  inputs."nimblegui-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_0".url = "path:./v0_2_0";
  inputs."nimblegui-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_1".url = "path:./v0_2_1";
  inputs."nimblegui-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblegui-v0_2_2".url = "path:./v0_2_2";
  inputs."nimblegui-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblegui-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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