{
  description = ''Dependency-free and performant Nim Snappy implementation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."supersnappy-master".url = "path:./master";
  inputs."supersnappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_0_0".url = "path:./1_0_0";
  inputs."supersnappy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_0".url = "path:./1_1_0";
  inputs."supersnappy-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_1".url = "path:./1_1_1";
  inputs."supersnappy-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_2".url = "path:./1_1_2";
  inputs."supersnappy-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_3".url = "path:./1_1_3";
  inputs."supersnappy-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_4".url = "path:./1_1_4";
  inputs."supersnappy-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-1_1_5".url = "path:./1_1_5";
  inputs."supersnappy-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_0_0".url = "path:./2_0_0";
  inputs."supersnappy-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_1_0".url = "path:./2_1_0";
  inputs."supersnappy-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy-2_1_1".url = "path:./2_1_1";
  inputs."supersnappy-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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