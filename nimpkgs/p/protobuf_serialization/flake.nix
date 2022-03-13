{
  description = ''Protobuf implementation compatible with the nim-serialization framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."protobuf_serialization-master".dir   = "master";
  inputs."protobuf_serialization-master".owner = "nim-nix-pkgs";
  inputs."protobuf_serialization-master".ref   = "master";
  inputs."protobuf_serialization-master".repo  = "protobuf_serialization";
  inputs."protobuf_serialization-master".type  = "github";
  inputs."protobuf_serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf_serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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