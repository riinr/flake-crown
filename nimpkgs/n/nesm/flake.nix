{
  description = ''A macro for generating [de]serializers for given objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nesm-master".url = "path:./master";
  inputs."nesm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_1_0".url = "path:./v0_1_0";
  inputs."nesm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_2_0".url = "path:./v0_2_0";
  inputs."nesm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_0".url = "path:./v0_3_0";
  inputs."nesm-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_1".url = "path:./v0_3_1";
  inputs."nesm-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_3_2".url = "path:./v0_3_2";
  inputs."nesm-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_0".url = "path:./v0_4_0";
  inputs."nesm-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_1".url = "path:./v0_4_1";
  inputs."nesm-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_10".url = "path:./v0_4_10";
  inputs."nesm-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_2".url = "path:./v0_4_2";
  inputs."nesm-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_3".url = "path:./v0_4_3";
  inputs."nesm-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_4".url = "path:./v0_4_4";
  inputs."nesm-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_5".url = "path:./v0_4_5";
  inputs."nesm-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_6".url = "path:./v0_4_6";
  inputs."nesm-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_7".url = "path:./v0_4_7";
  inputs."nesm-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_8".url = "path:./v0_4_8";
  inputs."nesm-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm-v0_4_9".url = "path:./v0_4_9";
  inputs."nesm-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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