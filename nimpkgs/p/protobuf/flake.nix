{
  description = ''Protobuf implementation in pure Nim that leverages the power of the macro system to not depend on any external tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."protobuf-master".url = "path:./master";
  inputs."protobuf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."protobuf-v0_4_0".url = "path:./v0_4_0";
  inputs."protobuf-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."protobuf-v0_5_1".url = "path:./v0_5_1";
  inputs."protobuf-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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