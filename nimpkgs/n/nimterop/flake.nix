{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimterop-master".url = "path:./master";
  inputs."nimterop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_1_0".url = "path:./v0_1_0";
  inputs."nimterop-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_0".url = "path:./v0_2_0";
  inputs."nimterop-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_1".url = "path:./v0_2_1";
  inputs."nimterop-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_0".url = "path:./v0_3_0";
  inputs."nimterop-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_1".url = "path:./v0_3_1";
  inputs."nimterop-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_2".url = "path:./v0_3_2";
  inputs."nimterop-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_3".url = "path:./v0_3_3";
  inputs."nimterop-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_4".url = "path:./v0_3_4";
  inputs."nimterop-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_5".url = "path:./v0_3_5";
  inputs."nimterop-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_6".url = "path:./v0_3_6";
  inputs."nimterop-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_0".url = "path:./v0_4_0";
  inputs."nimterop-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_1".url = "path:./v0_4_1";
  inputs."nimterop-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_2".url = "path:./v0_4_2";
  inputs."nimterop-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_3".url = "path:./v0_4_3";
  inputs."nimterop-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_4".url = "path:./v0_4_4";
  inputs."nimterop-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_0".url = "path:./v0_5_0";
  inputs."nimterop-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_1".url = "path:./v0_5_1";
  inputs."nimterop-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_2".url = "path:./v0_5_2";
  inputs."nimterop-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_3".url = "path:./v0_5_3";
  inputs."nimterop-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_4".url = "path:./v0_5_4";
  inputs."nimterop-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_5".url = "path:./v0_5_5";
  inputs."nimterop-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_6".url = "path:./v0_5_6";
  inputs."nimterop-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_7".url = "path:./v0_5_7";
  inputs."nimterop-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_8".url = "path:./v0_5_8";
  inputs."nimterop-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_9".url = "path:./v0_5_9";
  inputs."nimterop-v0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_0".url = "path:./v0_6_0";
  inputs."nimterop-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_1".url = "path:./v0_6_1";
  inputs."nimterop-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_10".url = "path:./v0_6_10";
  inputs."nimterop-v0_6_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_11".url = "path:./v0_6_11";
  inputs."nimterop-v0_6_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_12".url = "path:./v0_6_12";
  inputs."nimterop-v0_6_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_13".url = "path:./v0_6_13";
  inputs."nimterop-v0_6_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_2".url = "path:./v0_6_2";
  inputs."nimterop-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_3".url = "path:./v0_6_3";
  inputs."nimterop-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_4".url = "path:./v0_6_4";
  inputs."nimterop-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_5".url = "path:./v0_6_5";
  inputs."nimterop-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_6".url = "path:./v0_6_6";
  inputs."nimterop-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_7".url = "path:./v0_6_7";
  inputs."nimterop-v0_6_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_8".url = "path:./v0_6_8";
  inputs."nimterop-v0_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_9".url = "path:./v0_6_9";
  inputs."nimterop-v0_6_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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