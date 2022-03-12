{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neel-master".url = "path:./master";
  inputs."neel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-0_2_0".url = "path:./0_2_0";
  inputs."neel-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_0".url = "path:./v0_2_0";
  inputs."neel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_1".url = "path:./v0_2_1";
  inputs."neel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_2".url = "path:./v0_2_2";
  inputs."neel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_3".url = "path:./v0_2_3";
  inputs."neel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_4".url = "path:./v0_2_4";
  inputs."neel-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_5".url = "path:./v0_2_5";
  inputs."neel-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_6".url = "path:./v0_2_6";
  inputs."neel-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_7".url = "path:./v0_2_7";
  inputs."neel-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_0".url = "path:./v0_3_0";
  inputs."neel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_1".url = "path:./v0_3_1";
  inputs."neel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_2".url = "path:./v0_3_2";
  inputs."neel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_4_0".url = "path:./v0_4_0";
  inputs."neel-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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