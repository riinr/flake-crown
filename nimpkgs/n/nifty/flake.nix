{
  description = ''A decentralized (pseudo) package manager and script runner.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nifty-master".url = "path:./master";
  inputs."nifty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v0_1_0".url = "path:./v0_1_0";
  inputs."nifty-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_0_0".url = "path:./v1_0_0";
  inputs."nifty-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_0_1".url = "path:./v1_0_1";
  inputs."nifty-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_1_0".url = "path:./v1_1_0";
  inputs."nifty-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_0".url = "path:./v1_2_0";
  inputs."nifty-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_1".url = "path:./v1_2_1";
  inputs."nifty-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_2".url = "path:./v1_2_2";
  inputs."nifty-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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