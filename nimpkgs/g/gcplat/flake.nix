{
  description = ''Google Cloud Platform (GCP) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gcplat-master".url = "path:./master";
  inputs."gcplat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-0_0_1".url = "path:./0_0_1";
  inputs."gcplat-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_0".url = "path:./2_0_0";
  inputs."gcplat-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_1".url = "path:./2_0_1";
  inputs."gcplat-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_2".url = "path:./2_0_2";
  inputs."gcplat-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_3".url = "path:./2_0_3";
  inputs."gcplat-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_4".url = "path:./2_0_4";
  inputs."gcplat-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_5".url = "path:./2_0_5";
  inputs."gcplat-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-3_0_0".url = "path:./3_0_0";
  inputs."gcplat-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-3_0_1".url = "path:./3_0_1";
  inputs."gcplat-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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