{
  description = ''High level GObject-Introspection based GTK3 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gintro-master".url = "path:./master";
  inputs."gintro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_1_0".url = "path:./v0_1_0";
  inputs."gintro-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_2_0".url = "path:./v0_2_0";
  inputs."gintro-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_0".url = "path:./v0_4_0";
  inputs."gintro-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_1".url = "path:./v0_4_1";
  inputs."gintro-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_10".url = "path:./v0_4_10";
  inputs."gintro-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_11".url = "path:./v0_4_11";
  inputs."gintro-v0_4_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_14".url = "path:./v0_4_14";
  inputs."gintro-v0_4_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_15".url = "path:./v0_4_15";
  inputs."gintro-v0_4_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_16".url = "path:./v0_4_16";
  inputs."gintro-v0_4_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_17".url = "path:./v0_4_17";
  inputs."gintro-v0_4_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_18".url = "path:./v0_4_18";
  inputs."gintro-v0_4_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_2".url = "path:./v0_4_2";
  inputs."gintro-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_20".url = "path:./v0_4_20";
  inputs."gintro-v0_4_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_22".url = "path:./v0_4_22";
  inputs."gintro-v0_4_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_23".url = "path:./v0_4_23";
  inputs."gintro-v0_4_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_3".url = "path:./v0_4_3";
  inputs."gintro-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_4".url = "path:./v0_4_4";
  inputs."gintro-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_5".url = "path:./v0_4_5";
  inputs."gintro-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_6".url = "path:./v0_4_6";
  inputs."gintro-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_7".url = "path:./v0_4_7";
  inputs."gintro-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_8".url = "path:./v0_4_8";
  inputs."gintro-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_9".url = "path:./v0_4_9";
  inputs."gintro-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_0".url = "path:./v0_5_0";
  inputs."gintro-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_1".url = "path:./v0_5_1";
  inputs."gintro-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_2".url = "path:./v0_5_2";
  inputs."gintro-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_3".url = "path:./v0_5_3";
  inputs."gintro-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_4".url = "path:./v0_5_4";
  inputs."gintro-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_5".url = "path:./v0_5_5";
  inputs."gintro-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_6_0".url = "path:./v0_6_0";
  inputs."gintro-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_6_1".url = "path:./v0_6_1";
  inputs."gintro-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_0".url = "path:./v0_7_0";
  inputs."gintro-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_1".url = "path:./v0_7_1";
  inputs."gintro-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_2".url = "path:./v0_7_2";
  inputs."gintro-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_3".url = "path:./v0_7_3";
  inputs."gintro-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_4".url = "path:./v0_7_4";
  inputs."gintro-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_5".url = "path:./v0_7_5";
  inputs."gintro-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_6".url = "path:./v0_7_6";
  inputs."gintro-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_7".url = "path:./v0_7_7";
  inputs."gintro-v0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_8".url = "path:./v0_7_8";
  inputs."gintro-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_9".url = "path:./v0_7_9";
  inputs."gintro-v0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_0".url = "path:./v0_8_0";
  inputs."gintro-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_1".url = "path:./v0_8_1";
  inputs."gintro-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_2".url = "path:./v0_8_2";
  inputs."gintro-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_3".url = "path:./v0_8_3";
  inputs."gintro-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_4".url = "path:./v0_8_4";
  inputs."gintro-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_5".url = "path:./v0_8_5";
  inputs."gintro-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_6".url = "path:./v0_8_6";
  inputs."gintro-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_7".url = "path:./v0_8_7";
  inputs."gintro-v0_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_8".url = "path:./v0_8_8";
  inputs."gintro-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_9".url = "path:./v0_8_9";
  inputs."gintro-v0_8_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_0".url = "path:./v0_9_0";
  inputs."gintro-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_1".url = "path:./v0_9_1";
  inputs."gintro-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_2".url = "path:./v0_9_2";
  inputs."gintro-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_3".url = "path:./v0_9_3";
  inputs."gintro-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_4".url = "path:./v0_9_4";
  inputs."gintro-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_5".url = "path:./v0_9_5";
  inputs."gintro-v0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_6".url = "path:./v0_9_6";
  inputs."gintro-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_7".url = "path:./v0_9_7";
  inputs."gintro-v0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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