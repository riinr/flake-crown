{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."feta-main".url = "path:./main";
  inputs."feta-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_0".url = "path:./0_0_0";
  inputs."feta-0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_11".url = "path:./0_0_11";
  inputs."feta-0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_12".url = "path:./0_0_12";
  inputs."feta-0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_13".url = "path:./0_0_13";
  inputs."feta-0_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_14".url = "path:./0_0_14";
  inputs."feta-0_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_15".url = "path:./0_0_15";
  inputs."feta-0_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_16".url = "path:./0_0_16";
  inputs."feta-0_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_17".url = "path:./0_0_17";
  inputs."feta-0_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_2".url = "path:./0_0_2";
  inputs."feta-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_3".url = "path:./0_0_3";
  inputs."feta-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_4".url = "path:./0_0_4";
  inputs."feta-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_5".url = "path:./0_0_5";
  inputs."feta-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_6".url = "path:./0_0_6";
  inputs."feta-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_7".url = "path:./0_0_7";
  inputs."feta-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_8".url = "path:./0_0_8";
  inputs."feta-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_9".url = "path:./0_0_9";
  inputs."feta-0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_1_0".url = "path:./0_1_0";
  inputs."feta-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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