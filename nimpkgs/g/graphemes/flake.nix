{
  description = ''Grapheme aware string handling (Unicode tr29)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."graphemes-master".url = "path:./master";
  inputs."graphemes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_0".url = "path:./v0_1_0";
  inputs."graphemes-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_1".url = "path:./v0_1_1";
  inputs."graphemes-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_2".url = "path:./v0_1_2";
  inputs."graphemes-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_3".url = "path:./v0_1_3";
  inputs."graphemes-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_4".url = "path:./v0_1_4";
  inputs."graphemes-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_5".url = "path:./v0_1_5";
  inputs."graphemes-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_10_0".url = "path:./v0_10_0";
  inputs."graphemes-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_2_0".url = "path:./v0_2_0";
  inputs."graphemes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_3_0".url = "path:./v0_3_0";
  inputs."graphemes-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_4_0".url = "path:./v0_4_0";
  inputs."graphemes-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_4_1".url = "path:./v0_4_1";
  inputs."graphemes-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_5_0".url = "path:./v0_5_0";
  inputs."graphemes-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_6_0".url = "path:./v0_6_0";
  inputs."graphemes-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_7_0".url = "path:./v0_7_0";
  inputs."graphemes-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_8_0".url = "path:./v0_8_0";
  inputs."graphemes-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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