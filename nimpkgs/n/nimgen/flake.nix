{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgen-master".url = "path:./master";
  inputs."nimgen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_0".url = "path:./v0_1_0";
  inputs."nimgen-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_1".url = "path:./v0_1_1";
  inputs."nimgen-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_2".url = "path:./v0_1_2";
  inputs."nimgen-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_3".url = "path:./v0_1_3";
  inputs."nimgen-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_4".url = "path:./v0_1_4";
  inputs."nimgen-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_1_5".url = "path:./v0_1_5";
  inputs."nimgen-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_0".url = "path:./v0_2_0";
  inputs."nimgen-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_2".url = "path:./v0_2_2";
  inputs."nimgen-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_2_3".url = "path:./v0_2_3";
  inputs."nimgen-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_3_0".url = "path:./v0_3_0";
  inputs."nimgen-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_3_1".url = "path:./v0_3_1";
  inputs."nimgen-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_4_0".url = "path:./v0_4_0";
  inputs."nimgen-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_5_0".url = "path:./v0_5_0";
  inputs."nimgen-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen-v0_5_1".url = "path:./v0_5_1";
  inputs."nimgen-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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