{
  description = ''A tensor (multidimensional array) library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arraymancer-master".url = "path:./master";
  inputs."arraymancer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_0".url = "path:./v0_1_0";
  inputs."arraymancer-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_1".url = "path:./v0_1_1";
  inputs."arraymancer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_2".url = "path:./v0_1_2";
  inputs."arraymancer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_3".url = "path:./v0_1_3";
  inputs."arraymancer-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_2_0".url = "path:./v0_2_0";
  inputs."arraymancer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_3_0".url = "path:./v0_3_0";
  inputs."arraymancer-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_4_0".url = "path:./v0_4_0";
  inputs."arraymancer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_0".url = "path:./v0_5_0";
  inputs."arraymancer-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_1".url = "path:./v0_5_1";
  inputs."arraymancer-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_2".url = "path:./v0_5_2";
  inputs."arraymancer-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_0".url = "path:./v0_6_0";
  inputs."arraymancer-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_1".url = "path:./v0_6_1";
  inputs."arraymancer-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_2".url = "path:./v0_6_2";
  inputs."arraymancer-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_0".url = "path:./v0_7_0";
  inputs."arraymancer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_1".url = "path:./v0_7_1";
  inputs."arraymancer-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_10".url = "path:./v0_7_10";
  inputs."arraymancer-v0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_11".url = "path:./v0_7_11";
  inputs."arraymancer-v0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_2".url = "path:./v0_7_2";
  inputs."arraymancer-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_3".url = "path:./v0_7_3";
  inputs."arraymancer-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_4".url = "path:./v0_7_4";
  inputs."arraymancer-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_5".url = "path:./v0_7_5";
  inputs."arraymancer-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_6".url = "path:./v0_7_6";
  inputs."arraymancer-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_7".url = "path:./v0_7_7";
  inputs."arraymancer-v0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_8".url = "path:./v0_7_8";
  inputs."arraymancer-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_9".url = "path:./v0_7_9";
  inputs."arraymancer-v0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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