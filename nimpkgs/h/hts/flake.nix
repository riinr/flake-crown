{
  description = ''htslib wrapper for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hts-master".url = "path:./master";
  inputs."hts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_7".url = "path:./v0_1_7";
  inputs."hts-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_8".url = "path:./v0_1_8";
  inputs."hts-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_9".url = "path:./v0_1_9";
  inputs."hts-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_11".url = "path:./v0_2_11";
  inputs."hts-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_12".url = "path:./v0_2_12";
  inputs."hts-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_13".url = "path:./v0_2_13";
  inputs."hts-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_14".url = "path:./v0_2_14";
  inputs."hts-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_15".url = "path:./v0_2_15";
  inputs."hts-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_16".url = "path:./v0_2_16";
  inputs."hts-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_17".url = "path:./v0_2_17";
  inputs."hts-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_18".url = "path:./v0_2_18";
  inputs."hts-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_19".url = "path:./v0_2_19";
  inputs."hts-v0_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_2".url = "path:./v0_2_2";
  inputs."hts-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_20".url = "path:./v0_2_20";
  inputs."hts-v0_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_21".url = "path:./v0_2_21";
  inputs."hts-v0_2_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_22".url = "path:./v0_2_22";
  inputs."hts-v0_2_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_23".url = "path:./v0_2_23";
  inputs."hts-v0_2_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_5".url = "path:./v0_2_5";
  inputs."hts-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_7".url = "path:./v0_2_7";
  inputs."hts-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_8".url = "path:./v0_2_8";
  inputs."hts-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_0".url = "path:./v0_3_0";
  inputs."hts-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_10".url = "path:./v0_3_10";
  inputs."hts-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_11".url = "path:./v0_3_11";
  inputs."hts-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_12".url = "path:./v0_3_12";
  inputs."hts-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_13".url = "path:./v0_3_13";
  inputs."hts-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_14".url = "path:./v0_3_14";
  inputs."hts-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_15".url = "path:./v0_3_15";
  inputs."hts-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_16".url = "path:./v0_3_16";
  inputs."hts-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_17".url = "path:./v0_3_17";
  inputs."hts-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_18".url = "path:./v0_3_18";
  inputs."hts-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_19".url = "path:./v0_3_19";
  inputs."hts-v0_3_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_2".url = "path:./v0_3_2";
  inputs."hts-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_20".url = "path:./v0_3_20";
  inputs."hts-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_21".url = "path:./v0_3_21";
  inputs."hts-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_3".url = "path:./v0_3_3";
  inputs."hts-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_4".url = "path:./v0_3_4";
  inputs."hts-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_5".url = "path:./v0_3_5";
  inputs."hts-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_6".url = "path:./v0_3_6";
  inputs."hts-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_7".url = "path:./v0_3_7";
  inputs."hts-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_8".url = "path:./v0_3_8";
  inputs."hts-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_9".url = "path:./v0_3_9";
  inputs."hts-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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