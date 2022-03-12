{
  description = ''Adds class support to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."classes-master".url = "path:./master";
  inputs."classes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_0".url = "path:./v0_2_0";
  inputs."classes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_1".url = "path:./v0_2_1";
  inputs."classes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_11".url = "path:./v0_2_11";
  inputs."classes-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_2".url = "path:./v0_2_2";
  inputs."classes-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_3".url = "path:./v0_2_3";
  inputs."classes-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_5".url = "path:./v0_2_5";
  inputs."classes-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_8".url = "path:./v0_2_8";
  inputs."classes-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_9".url = "path:./v0_2_9";
  inputs."classes-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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