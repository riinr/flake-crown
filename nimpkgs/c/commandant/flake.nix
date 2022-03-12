{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."commandant-master".url = "path:./master";
  inputs."commandant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_1_0".url = "path:./0_1_0";
  inputs."commandant-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_1_2".url = "path:./0_1_2";
  inputs."commandant-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_2".url = "path:./0_10_2";
  inputs."commandant-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_3".url = "path:./0_10_3";
  inputs."commandant-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_4".url = "path:./0_10_4";
  inputs."commandant-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_5".url = "path:./0_10_5";
  inputs."commandant-0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_11_0".url = "path:./0_11_0";
  inputs."commandant-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_0".url = "path:./0_12_0";
  inputs."commandant-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_1".url = "path:./0_12_1";
  inputs."commandant-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_3".url = "path:./0_12_3";
  inputs."commandant-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_13_0".url = "path:./0_13_0";
  inputs."commandant-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_14_0".url = "path:./0_14_0";
  inputs."commandant-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_15_0".url = "path:./0_15_0";
  inputs."commandant-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_2_0".url = "path:./0_2_0";
  inputs."commandant-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_3_0".url = "path:./0_3_0";
  inputs."commandant-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_3_1".url = "path:./0_3_1";
  inputs."commandant-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_4_0".url = "path:./0_4_0";
  inputs."commandant-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_5_0".url = "path:./0_5_0";
  inputs."commandant-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_6_0".url = "path:./0_6_0";
  inputs."commandant-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_7_0".url = "path:./0_7_0";
  inputs."commandant-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_8_0".url = "path:./0_8_0";
  inputs."commandant-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_9_0".url = "path:./0_9_0";
  inputs."commandant-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_9_1".url = "path:./0_9_1";
  inputs."commandant-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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