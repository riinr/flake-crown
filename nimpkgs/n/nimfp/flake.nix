{
  description = ''Nim functional programming library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfp-master".url = "path:./master";
  inputs."nimfp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_1".url = "path:./v0_0_1";
  inputs."nimfp-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_2".url = "path:./v0_0_2";
  inputs."nimfp-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_3".url = "path:./v0_0_3";
  inputs."nimfp-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_4".url = "path:./v0_0_4";
  inputs."nimfp-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_5".url = "path:./v0_0_5";
  inputs."nimfp-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_6".url = "path:./v0_0_6";
  inputs."nimfp-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_7".url = "path:./v0_0_7";
  inputs."nimfp-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_8".url = "path:./v0_0_8";
  inputs."nimfp-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_9".url = "path:./v0_0_9";
  inputs."nimfp-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfp-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_0".url = "path:./v0_2_0";
  inputs."nimfp-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_1".url = "path:./v0_2_1";
  inputs."nimfp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_2".url = "path:./v0_2_2";
  inputs."nimfp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_3".url = "path:./v0_2_3";
  inputs."nimfp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_4".url = "path:./v0_2_4";
  inputs."nimfp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_0".url = "path:./v0_3_0";
  inputs."nimfp-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_1".url = "path:./v0_3_1";
  inputs."nimfp-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_2".url = "path:./v0_3_2";
  inputs."nimfp-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_3".url = "path:./v0_3_3";
  inputs."nimfp-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_4".url = "path:./v0_3_4";
  inputs."nimfp-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_5".url = "path:./v0_3_5";
  inputs."nimfp-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_6".url = "path:./v0_3_6";
  inputs."nimfp-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_7".url = "path:./v0_3_7";
  inputs."nimfp-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_0".url = "path:./v0_4_0";
  inputs."nimfp-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_1".url = "path:./v0_4_1";
  inputs."nimfp-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_2".url = "path:./v0_4_2";
  inputs."nimfp-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_3".url = "path:./v0_4_3";
  inputs."nimfp-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_4".url = "path:./v0_4_4";
  inputs."nimfp-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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