{
  description = ''Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."manu-master".url = "path:./master";
  inputs."manu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-1_9_1".url = "path:./1_9_1";
  inputs."manu-1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_0".url = "path:./v1_0";
  inputs."manu-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_1".url = "path:./v1_1";
  inputs."manu-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_2".url = "path:./v1_2";
  inputs."manu-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_3".url = "path:./v1_3";
  inputs."manu-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_4".url = "path:./v1_4";
  inputs."manu-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_5".url = "path:./v1_5";
  inputs."manu-v1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_9_1".url = "path:./v1_9_1";
  inputs."manu-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0".url = "path:./v2_0";
  inputs."manu-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0_1".url = "path:./v2_0_1";
  inputs."manu-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0_4".url = "path:./v2_0_4";
  inputs."manu-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_0".url = "path:./v2_1_0";
  inputs."manu-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_1".url = "path:./v2_1_1";
  inputs."manu-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_2".url = "path:./v2_1_2";
  inputs."manu-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_2_0".url = "path:./v2_2_0";
  inputs."manu-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_2_1".url = "path:./v2_2_1";
  inputs."manu-v2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_3".url = "path:./v2_3";
  inputs."manu-v2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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