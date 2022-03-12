{
  description = ''Nim Julia bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimjl-master".url = "path:./master";
  inputs."nimjl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_3_0".url = "path:./v0_3_0";
  inputs."nimjl-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_0".url = "path:./v0_4_0";
  inputs."nimjl-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_1".url = "path:./v0_4_1";
  inputs."nimjl-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_2".url = "path:./v0_4_2";
  inputs."nimjl-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_3".url = "path:./v0_4_3";
  inputs."nimjl-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_4".url = "path:./v0_4_4";
  inputs."nimjl-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_4_5".url = "path:./v0_4_5";
  inputs."nimjl-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_0".url = "path:./v0_5_0";
  inputs."nimjl-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_1".url = "path:./v0_5_1";
  inputs."nimjl-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_2".url = "path:./v0_5_2";
  inputs."nimjl-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_3".url = "path:./v0_5_3";
  inputs."nimjl-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_4".url = "path:./v0_5_4";
  inputs."nimjl-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_5".url = "path:./v0_5_5";
  inputs."nimjl-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_6".url = "path:./v0_5_6";
  inputs."nimjl-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_7".url = "path:./v0_5_7";
  inputs."nimjl-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_8".url = "path:./v0_5_8";
  inputs."nimjl-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_5_9".url = "path:./v0_5_9";
  inputs."nimjl-v0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_0".url = "path:./v0_6_0";
  inputs."nimjl-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_1".url = "path:./v0_6_1";
  inputs."nimjl-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_2".url = "path:./v0_6_2";
  inputs."nimjl-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_6_3".url = "path:./v0_6_3";
  inputs."nimjl-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjl-v0_7_0".url = "path:./v0_7_0";
  inputs."nimjl-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjl-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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