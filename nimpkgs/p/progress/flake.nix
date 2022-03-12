{
  description = ''A simple progress bar for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."progress-master".url = "path:./master";
  inputs."progress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_0".url = "path:./v1_0_0";
  inputs."progress-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_1".url = "path:./v1_0_1";
  inputs."progress-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_2".url = "path:./v1_0_2";
  inputs."progress-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_0".url = "path:./v1_1_0";
  inputs."progress-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_1".url = "path:./v1_1_1";
  inputs."progress-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_3".url = "path:./v1_1_3";
  inputs."progress-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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