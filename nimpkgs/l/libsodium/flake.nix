{
  description = ''libsodium wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libsodium-master".url = "path:./master";
  inputs."libsodium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_2_2".url = "path:./0_2_2";
  inputs."libsodium-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_3_0".url = "path:./0_3_0";
  inputs."libsodium-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_0".url = "path:./0_4_0";
  inputs."libsodium-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_1".url = "path:./0_4_1";
  inputs."libsodium-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_2".url = "path:./0_4_2";
  inputs."libsodium-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_5_0".url = "path:./0_5_0";
  inputs."libsodium-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_6_0".url = "path:./0_6_0";
  inputs."libsodium-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_7_0".url = "path:./0_7_0";
  inputs."libsodium-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_7_1".url = "path:./0_7_1";
  inputs."libsodium-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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