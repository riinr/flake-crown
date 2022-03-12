{
  description = ''A better regular expression library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nre-master".url = "path:./master";
  inputs."nre-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_1_0".url = "path:./0_1_0";
  inputs."nre-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_2_0".url = "path:./0_2_0";
  inputs."nre-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_3_0".url = "path:./0_3_0";
  inputs."nre-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_3_1".url = "path:./0_3_1";
  inputs."nre-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_4_0".url = "path:./0_4_0";
  inputs."nre-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_5_0".url = "path:./0_5_0";
  inputs."nre-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_6_0".url = "path:./0_6_0";
  inputs."nre-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_6_1".url = "path:./0_6_1";
  inputs."nre-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-1_0_0".url = "path:./1_0_0";
  inputs."nre-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_0".url = "path:./2_0_0";
  inputs."nre-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_1".url = "path:./2_0_1";
  inputs."nre-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_2".url = "path:./2_0_2";
  inputs."nre-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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