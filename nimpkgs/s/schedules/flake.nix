{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."schedules-master".url = "path:./master";
  inputs."schedules-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_1_1".url = "path:./v0_1_1";
  inputs."schedules-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_1_2".url = "path:./v0_1_2";
  inputs."schedules-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."schedules-v0_2_0".url = "path:./v0_2_0";
  inputs."schedules-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."schedules-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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