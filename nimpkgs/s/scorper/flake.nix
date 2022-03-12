{
  description = ''micro and elegant web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scorper-1_0_17".url = "path:./1_0_17";
  inputs."scorper-1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_0".url = "path:./v1_0_0";
  inputs."scorper-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_1".url = "path:./v1_0_1";
  inputs."scorper-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_10".url = "path:./v1_0_10";
  inputs."scorper-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_11".url = "path:./v1_0_11";
  inputs."scorper-v1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_12".url = "path:./v1_0_12";
  inputs."scorper-v1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_13".url = "path:./v1_0_13";
  inputs."scorper-v1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_15".url = "path:./v1_0_15";
  inputs."scorper-v1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_16".url = "path:./v1_0_16";
  inputs."scorper-v1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_17".url = "path:./v1_0_17";
  inputs."scorper-v1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_18".url = "path:./v1_0_18";
  inputs."scorper-v1_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_19".url = "path:./v1_0_19";
  inputs."scorper-v1_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_2".url = "path:./v1_0_2";
  inputs."scorper-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_20".url = "path:./v1_0_20";
  inputs."scorper-v1_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_21".url = "path:./v1_0_21";
  inputs."scorper-v1_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_22".url = "path:./v1_0_22";
  inputs."scorper-v1_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_23".url = "path:./v1_0_23";
  inputs."scorper-v1_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_24".url = "path:./v1_0_24";
  inputs."scorper-v1_0_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_25".url = "path:./v1_0_25";
  inputs."scorper-v1_0_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_26".url = "path:./v1_0_26";
  inputs."scorper-v1_0_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_3".url = "path:./v1_0_3";
  inputs."scorper-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_4".url = "path:./v1_0_4";
  inputs."scorper-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_5".url = "path:./v1_0_5";
  inputs."scorper-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_6".url = "path:./v1_0_6";
  inputs."scorper-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_7".url = "path:./v1_0_7";
  inputs."scorper-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_8".url = "path:./v1_0_8";
  inputs."scorper-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_9".url = "path:./v1_0_9";
  inputs."scorper-v1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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