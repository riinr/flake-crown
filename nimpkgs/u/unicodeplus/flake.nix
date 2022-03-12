{
  description = ''Common unicode operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unicodeplus-master".url = "path:./master";
  inputs."unicodeplus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_1_0".url = "path:./v0_1_0";
  inputs."unicodeplus-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_1_1".url = "path:./v0_1_1";
  inputs."unicodeplus-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_2_0".url = "path:./v0_2_0";
  inputs."unicodeplus-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_0".url = "path:./v0_3_0";
  inputs."unicodeplus-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_1".url = "path:./v0_3_1";
  inputs."unicodeplus-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_2".url = "path:./v0_3_2";
  inputs."unicodeplus-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_4_0".url = "path:./v0_4_0";
  inputs."unicodeplus-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_5_0".url = "path:./v0_5_0";
  inputs."unicodeplus-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_5_1".url = "path:./v0_5_1";
  inputs."unicodeplus-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_6_0".url = "path:./v0_6_0";
  inputs."unicodeplus-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_8_0".url = "path:./v0_8_0";
  inputs."unicodeplus-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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