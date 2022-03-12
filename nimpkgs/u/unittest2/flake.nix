{
  description = ''unittest fork focused on parallel test execution'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unittest2-master".url = "path:./master";
  inputs."unittest2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_1".url = "path:./v0_0_1";
  inputs."unittest2-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_2".url = "path:./v0_0_2";
  inputs."unittest2-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_3".url = "path:./v0_0_3";
  inputs."unittest2-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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