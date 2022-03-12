{
  description = ''BLAS for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimblas-master".url = "path:./master";
  inputs."nimblas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_1".url = "path:./0_1_1";
  inputs."nimblas-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_2".url = "path:./0_1_2";
  inputs."nimblas-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_3".url = "path:./0_1_3";
  inputs."nimblas-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_4".url = "path:./0_1_4";
  inputs."nimblas-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_0".url = "path:./0_2_0";
  inputs."nimblas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_1".url = "path:./0_2_1";
  inputs."nimblas-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_2".url = "path:./0_2_2";
  inputs."nimblas-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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