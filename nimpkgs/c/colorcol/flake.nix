{
  description = ''Kakoune plugin for color preview'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."colorcol-master".url = "path:./master";
  inputs."colorcol-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_1_1".url = "path:./v0_1_1";
  inputs."colorcol-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_2_0".url = "path:./v0_2_0";
  inputs."colorcol-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_0".url = "path:./v0_3_0";
  inputs."colorcol-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_1".url = "path:./v0_3_1";
  inputs."colorcol-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_2".url = "path:./v0_3_2";
  inputs."colorcol-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_3".url = "path:./v0_3_3";
  inputs."colorcol-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_4".url = "path:./v0_3_4";
  inputs."colorcol-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_4_0".url = "path:./v0_4_0";
  inputs."colorcol-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_4_1".url = "path:./v0_4_1";
  inputs."colorcol-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_0".url = "path:./v0_5_0";
  inputs."colorcol-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_1".url = "path:./v0_5_1";
  inputs."colorcol-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_2".url = "path:./v0_5_2";
  inputs."colorcol-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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