{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimha-master".url = "path:./master";
  inputs."nimha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_0".url = "path:./v0_3_0";
  inputs."nimha-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_1".url = "path:./v0_3_1";
  inputs."nimha-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_2".url = "path:./v0_3_2";
  inputs."nimha-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_3".url = "path:./v0_3_3";
  inputs."nimha-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_5".url = "path:./v0_3_5";
  inputs."nimha-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_6".url = "path:./v0_3_6";
  inputs."nimha-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_0".url = "path:./v0_4_0";
  inputs."nimha-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_1".url = "path:./v0_4_1";
  inputs."nimha-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_3".url = "path:./v0_4_3";
  inputs."nimha-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_4".url = "path:./v0_4_4";
  inputs."nimha-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_5".url = "path:./v0_4_5";
  inputs."nimha-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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