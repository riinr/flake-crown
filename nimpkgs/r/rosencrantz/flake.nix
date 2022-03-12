{
  description = ''A web DSL for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rosencrantz-master".url = "path:./master";
  inputs."rosencrantz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_0".url = "path:./0_1_0";
  inputs."rosencrantz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_1".url = "path:./0_1_1";
  inputs."rosencrantz-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_10".url = "path:./0_1_10";
  inputs."rosencrantz-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_11".url = "path:./0_1_11";
  inputs."rosencrantz-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_12".url = "path:./0_1_12";
  inputs."rosencrantz-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_2".url = "path:./0_1_2";
  inputs."rosencrantz-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_3".url = "path:./0_1_3";
  inputs."rosencrantz-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_4".url = "path:./0_1_4";
  inputs."rosencrantz-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_5".url = "path:./0_1_5";
  inputs."rosencrantz-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_6".url = "path:./0_1_6";
  inputs."rosencrantz-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_7".url = "path:./0_1_7";
  inputs."rosencrantz-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_8".url = "path:./0_1_8";
  inputs."rosencrantz-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_9".url = "path:./0_1_9";
  inputs."rosencrantz-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_0".url = "path:./0_2_0";
  inputs."rosencrantz-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_1".url = "path:./0_2_1";
  inputs."rosencrantz-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_2".url = "path:./0_2_2";
  inputs."rosencrantz-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_3".url = "path:./0_2_3";
  inputs."rosencrantz-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_4".url = "path:./0_2_4";
  inputs."rosencrantz-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_5".url = "path:./0_2_5";
  inputs."rosencrantz-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_6".url = "path:./0_2_6";
  inputs."rosencrantz-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_7".url = "path:./0_2_7";
  inputs."rosencrantz-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_8".url = "path:./0_2_8";
  inputs."rosencrantz-0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_0".url = "path:./0_3_0";
  inputs."rosencrantz-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_1".url = "path:./0_3_1";
  inputs."rosencrantz-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_2".url = "path:./0_3_2";
  inputs."rosencrantz-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_3".url = "path:./0_3_3";
  inputs."rosencrantz-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_4".url = "path:./0_3_4";
  inputs."rosencrantz-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_5".url = "path:./0_3_5";
  inputs."rosencrantz-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_6".url = "path:./0_3_6";
  inputs."rosencrantz-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_7".url = "path:./0_3_7";
  inputs."rosencrantz-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_8".url = "path:./0_3_8";
  inputs."rosencrantz-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_9".url = "path:./0_3_9";
  inputs."rosencrantz-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_0".url = "path:./0_4_0";
  inputs."rosencrantz-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_1".url = "path:./0_4_1";
  inputs."rosencrantz-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_2".url = "path:./0_4_2";
  inputs."rosencrantz-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_3".url = "path:./0_4_3";
  inputs."rosencrantz-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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