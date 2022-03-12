{
  description = ''A dataframe library with a dplyr like API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."datamancer-master".url = "path:./master";
  inputs."datamancer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_0".url = "path:./v0_1_0";
  inputs."datamancer-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_1".url = "path:./v0_1_1";
  inputs."datamancer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_10".url = "path:./v0_1_10";
  inputs."datamancer-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_11".url = "path:./v0_1_11";
  inputs."datamancer-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_2".url = "path:./v0_1_2";
  inputs."datamancer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_3".url = "path:./v0_1_3";
  inputs."datamancer-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_4".url = "path:./v0_1_4";
  inputs."datamancer-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_5".url = "path:./v0_1_5";
  inputs."datamancer-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_6".url = "path:./v0_1_6";
  inputs."datamancer-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_7".url = "path:./v0_1_7";
  inputs."datamancer-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_8".url = "path:./v0_1_8";
  inputs."datamancer-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_0".url = "path:./v0_2_0";
  inputs."datamancer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_1".url = "path:./v0_2_1";
  inputs."datamancer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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