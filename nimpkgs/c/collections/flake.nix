{
  description = ''Various collections and utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."collections-master".url = "path:./master";
  inputs."collections-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_0_2".url = "path:./v0_0_2";
  inputs."collections-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_1_2".url = "path:./v0_1_2";
  inputs."collections-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_0".url = "path:./v0_3_0";
  inputs."collections-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_1".url = "path:./v0_3_1";
  inputs."collections-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_2".url = "path:./v0_3_2";
  inputs."collections-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_3".url = "path:./v0_3_3";
  inputs."collections-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_4".url = "path:./v0_3_4";
  inputs."collections-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_0".url = "path:./v0_5_0";
  inputs."collections-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_1".url = "path:./v0_5_1";
  inputs."collections-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_2".url = "path:./v0_5_2";
  inputs."collections-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}