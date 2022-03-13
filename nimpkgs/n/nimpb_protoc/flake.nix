{
  description = ''Protocol Buffers compiler support package for nimpb'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpb_protoc-master".dir   = "master";
  inputs."nimpb_protoc-master".owner = "nim-nix-pkgs";
  inputs."nimpb_protoc-master".ref   = "master";
  inputs."nimpb_protoc-master".repo  = "nimpb_protoc";
  inputs."nimpb_protoc-master".type  = "github";
  inputs."nimpb_protoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpb_protoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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