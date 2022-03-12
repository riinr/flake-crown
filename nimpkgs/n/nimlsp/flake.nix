{
  description = ''Language Server Protocol implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlsp-master".url = "path:./master";
  inputs."nimlsp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_0".url = "path:./v0_2_0";
  inputs."nimlsp-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_1".url = "path:./v0_2_1";
  inputs."nimlsp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_2".url = "path:./v0_2_2";
  inputs."nimlsp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_3".url = "path:./v0_2_3";
  inputs."nimlsp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_4".url = "path:./v0_2_4";
  inputs."nimlsp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_6".url = "path:./v0_2_6";
  inputs."nimlsp-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_3_2".url = "path:./v0_3_2";
  inputs."nimlsp-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_4_0".url = "path:./v0_4_0";
  inputs."nimlsp-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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