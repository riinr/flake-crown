{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moe-develop".url = "path:./develop";
  inputs."moe-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-master".url = "path:./master";
  inputs."moe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_1".url = "path:./v0_0_1";
  inputs."moe-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_2".url = "path:./v0_0_2";
  inputs."moe-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_3".url = "path:./v0_0_3";
  inputs."moe-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_35".url = "path:./v0_0_35";
  inputs."moe-v0_0_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_40".url = "path:./v0_0_40";
  inputs."moe-v0_0_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_50".url = "path:./v0_0_50";
  inputs."moe-v0_0_50".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_50".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_60".url = "path:./v0_0_60";
  inputs."moe-v0_0_60".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_60".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_61".url = "path:./v0_0_61";
  inputs."moe-v0_0_61".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_61".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_70".url = "path:./v0_0_70";
  inputs."moe-v0_0_70".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_70".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_80".url = "path:./v0_0_80";
  inputs."moe-v0_0_80".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_80".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_81".url = "path:./v0_0_81";
  inputs."moe-v0_0_81".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_81".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_82".url = "path:./v0_0_82";
  inputs."moe-v0_0_82".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_82".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_83".url = "path:./v0_0_83";
  inputs."moe-v0_0_83".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_83".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_84".url = "path:./v0_0_84";
  inputs."moe-v0_0_84".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_84".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_0_90".url = "path:./v0_0_90";
  inputs."moe-v0_0_90".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_0_90".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_0".url = "path:./v0_1_0";
  inputs."moe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_1".url = "path:./v0_1_1";
  inputs."moe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_2".url = "path:./v0_1_2";
  inputs."moe-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_3".url = "path:./v0_1_3";
  inputs."moe-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_4".url = "path:./v0_1_4";
  inputs."moe-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_5".url = "path:./v0_1_5";
  inputs."moe-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_6".url = "path:./v0_1_6";
  inputs."moe-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_7".url = "path:./v0_1_7";
  inputs."moe-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_8".url = "path:./v0_1_8";
  inputs."moe-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_1_9".url = "path:./v0_1_9";
  inputs."moe-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0".url = "path:./v0_2_0";
  inputs."moe-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0_1".url = "path:./v0_2_0_1";
  inputs."moe-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_0_2".url = "path:./v0_2_0_2";
  inputs."moe-v0_2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_1".url = "path:./v0_2_1";
  inputs."moe-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_2".url = "path:./v0_2_2";
  inputs."moe-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_2_1".url = "path:./v0_2_2_1";
  inputs."moe-v0_2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_3".url = "path:./v0_2_3";
  inputs."moe-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_3_1".url = "path:./v0_2_3_1";
  inputs."moe-v0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_4".url = "path:./v0_2_4";
  inputs."moe-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_4_1".url = "path:./v0_2_4_1";
  inputs."moe-v0_2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_5_0".url = "path:./v0_2_5_0";
  inputs."moe-v0_2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_5_1".url = "path:./v0_2_5_1";
  inputs."moe-v0_2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_6_0".url = "path:./v0_2_6_0";
  inputs."moe-v0_2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_6_1".url = "path:./v0_2_6_1";
  inputs."moe-v0_2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_7_0".url = "path:./v0_2_7_0";
  inputs."moe-v0_2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_2_8_0".url = "path:./v0_2_8_0";
  inputs."moe-v0_2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moe-v0_3_0".url = "path:./v0_3_0";
  inputs."moe-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moe-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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