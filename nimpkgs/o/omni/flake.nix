{
  description = ''omni is a DSL for low-level audio programming.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omni-develop".url = "path:./develop";
  inputs."omni-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-master".url = "path:./master";
  inputs."omni-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_1_0".url = "path:./0_1_0";
  inputs."omni-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_0".url = "path:./0_2_0";
  inputs."omni-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_1".url = "path:./0_2_1";
  inputs."omni-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_2".url = "path:./0_2_2";
  inputs."omni-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_3".url = "path:./0_2_3";
  inputs."omni-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_4_0".url = "path:./0_4_0";
  inputs."omni-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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