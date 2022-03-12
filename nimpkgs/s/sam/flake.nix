{
  description = ''Fast and just works JSON-Binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sam-master".url = "path:./master";
  inputs."sam-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_11".url = "path:./0_1_11";
  inputs."sam-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_12".url = "path:./0_1_12";
  inputs."sam-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_13".url = "path:./0_1_13";
  inputs."sam-0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_14".url = "path:./0_1_14";
  inputs."sam-0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_15".url = "path:./0_1_15";
  inputs."sam-0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_16".url = "path:./0_1_16";
  inputs."sam-0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_17".url = "path:./0_1_17";
  inputs."sam-0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_2_1".url = "path:./0_1_2_1";
  inputs."sam-0_1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_3".url = "path:./0_1_3";
  inputs."sam-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_4".url = "path:./0_1_4";
  inputs."sam-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_5".url = "path:./0_1_5";
  inputs."sam-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_6".url = "path:./0_1_6";
  inputs."sam-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_7".url = "path:./0_1_7";
  inputs."sam-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_8".url = "path:./0_1_8";
  inputs."sam-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_9".url = "path:./0_1_9";
  inputs."sam-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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