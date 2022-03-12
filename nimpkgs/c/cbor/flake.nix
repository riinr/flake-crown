{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cbor-master".url = "path:./master";
  inputs."cbor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-staging".url = "path:./staging";
  inputs."cbor-staging".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-staging".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-0_5_0".url = "path:./0_5_0";
  inputs."cbor-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_1_0".url = "path:./v0_1_0";
  inputs."cbor-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_2_0".url = "path:./v0_2_0";
  inputs."cbor-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_3_0".url = "path:./v0_3_0";
  inputs."cbor-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_4_0".url = "path:./v0_4_0";
  inputs."cbor-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_4_1".url = "path:./v0_4_1";
  inputs."cbor-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_5_1".url = "path:./v0_5_1";
  inputs."cbor-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_5_2".url = "path:./v0_5_2";
  inputs."cbor-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_6_0".url = "path:./v0_6_0";
  inputs."cbor-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_7_0".url = "path:./v0_7_0";
  inputs."cbor-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_8_0".url = "path:./v0_8_0";
  inputs."cbor-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cbor-v0_8_1".url = "path:./v0_8_1";
  inputs."cbor-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cbor-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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