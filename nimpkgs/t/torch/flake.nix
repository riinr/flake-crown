{
  description = ''A nim flavor of pytorch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."torch-master".url = "path:./master";
  inputs."torch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_1".url = "path:./v0_1_1";
  inputs."torch-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_10".url = "path:./v0_1_10";
  inputs."torch-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_11".url = "path:./v0_1_11";
  inputs."torch-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_12".url = "path:./v0_1_12";
  inputs."torch-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_13".url = "path:./v0_1_13";
  inputs."torch-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_15".url = "path:./v0_1_15";
  inputs."torch-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_16".url = "path:./v0_1_16";
  inputs."torch-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_17".url = "path:./v0_1_17";
  inputs."torch-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_18".url = "path:./v0_1_18";
  inputs."torch-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_19".url = "path:./v0_1_19";
  inputs."torch-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_2".url = "path:./v0_1_2";
  inputs."torch-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_20".url = "path:./v0_1_20";
  inputs."torch-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_21".url = "path:./v0_1_21";
  inputs."torch-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_22".url = "path:./v0_1_22";
  inputs."torch-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_23".url = "path:./v0_1_23";
  inputs."torch-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_24".url = "path:./v0_1_24";
  inputs."torch-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_3".url = "path:./v0_1_3";
  inputs."torch-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_4".url = "path:./v0_1_4";
  inputs."torch-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_5".url = "path:./v0_1_5";
  inputs."torch-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_6".url = "path:./v0_1_6";
  inputs."torch-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_8".url = "path:./v0_1_8";
  inputs."torch-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_9".url = "path:./v0_1_9";
  inputs."torch-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_0".url = "path:./v0_2_0";
  inputs."torch-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_1".url = "path:./v0_2_1";
  inputs."torch-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_2".url = "path:./v0_2_2";
  inputs."torch-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_3".url = "path:./v0_2_3";
  inputs."torch-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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