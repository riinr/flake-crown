{
  description = ''A Beautiful Markdown Parser in the Nim World.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."markdown-master".url = "path:./master";
  inputs."markdown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_0".url = "path:./v0_1_0";
  inputs."markdown-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_1".url = "path:./v0_1_1";
  inputs."markdown-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_2".url = "path:./v0_1_2";
  inputs."markdown-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_2_0".url = "path:./v0_2_0";
  inputs."markdown-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_0".url = "path:./v0_3_0";
  inputs."markdown-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_1".url = "path:./v0_3_1";
  inputs."markdown-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_2".url = "path:./v0_3_2";
  inputs."markdown-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_3".url = "path:./v0_3_3";
  inputs."markdown-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_4".url = "path:./v0_3_4";
  inputs."markdown-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_4_0".url = "path:./v0_4_0";
  inputs."markdown-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_0".url = "path:./v0_5_0";
  inputs."markdown-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_1".url = "path:./v0_5_1";
  inputs."markdown-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_2".url = "path:./v0_5_2";
  inputs."markdown-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_6_0".url = "path:./v0_6_0";
  inputs."markdown-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_6_1".url = "path:./v0_6_1";
  inputs."markdown-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_0".url = "path:./v0_7_0";
  inputs."markdown-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_1".url = "path:./v0_7_1";
  inputs."markdown-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_2".url = "path:./v0_7_2";
  inputs."markdown-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_0".url = "path:./v0_8_0";
  inputs."markdown-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_1".url = "path:./v0_8_1";
  inputs."markdown-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_2".url = "path:./v0_8_2";
  inputs."markdown-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_3".url = "path:./v0_8_3";
  inputs."markdown-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_4".url = "path:./v0_8_4";
  inputs."markdown-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_5".url = "path:./v0_8_5";
  inputs."markdown-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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