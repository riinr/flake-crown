{
  description = ''String algorithms with succinct data structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cello-master".url = "path:./master";
  inputs."cello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_0".url = "path:./0_1_0";
  inputs."cello-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_1".url = "path:./0_1_1";
  inputs."cello-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_2".url = "path:./0_1_2";
  inputs."cello-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_3".url = "path:./0_1_3";
  inputs."cello-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_4".url = "path:./0_1_4";
  inputs."cello-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_5".url = "path:./0_1_5";
  inputs."cello-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_6".url = "path:./0_1_6";
  inputs."cello-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_2_0".url = "path:./0_2_0";
  inputs."cello-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_3_0".url = "path:./0_3_0";
  inputs."cello-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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