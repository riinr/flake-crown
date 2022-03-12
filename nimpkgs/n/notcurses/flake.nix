{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notcurses-master".url = "path:./master";
  inputs."notcurses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_13".url = "path:./v2_3_13";
  inputs."notcurses-v2_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_14".url = "path:./v2_3_14";
  inputs."notcurses-v2_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_15".url = "path:./v2_3_15";
  inputs."notcurses-v2_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_16".url = "path:./v2_3_16";
  inputs."notcurses-v2_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_17".url = "path:./v2_3_17";
  inputs."notcurses-v2_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_18".url = "path:./v2_3_18";
  inputs."notcurses-v2_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_0".url = "path:./v2_4_0";
  inputs."notcurses-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_1".url = "path:./v2_4_1";
  inputs."notcurses-v2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_2".url = "path:./v2_4_2";
  inputs."notcurses-v2_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_3".url = "path:./v2_4_3";
  inputs."notcurses-v2_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_4".url = "path:./v2_4_4";
  inputs."notcurses-v2_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_5".url = "path:./v2_4_5";
  inputs."notcurses-v2_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_6".url = "path:./v2_4_6";
  inputs."notcurses-v2_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_7".url = "path:./v2_4_7";
  inputs."notcurses-v2_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_8".url = "path:./v2_4_8";
  inputs."notcurses-v2_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_9".url = "path:./v2_4_9";
  inputs."notcurses-v2_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_0".url = "path:./v3_0_0";
  inputs."notcurses-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_1".url = "path:./v3_0_1";
  inputs."notcurses-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_2".url = "path:./v3_0_2";
  inputs."notcurses-v3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_3".url = "path:./v3_0_3";
  inputs."notcurses-v3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_4".url = "path:./v3_0_4";
  inputs."notcurses-v3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_5".url = "path:./v3_0_5";
  inputs."notcurses-v3_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_6".url = "path:./v3_0_6";
  inputs."notcurses-v3_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_7".url = "path:./v3_0_7";
  inputs."notcurses-v3_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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