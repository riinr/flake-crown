{
  description = ''Cap'n Proto implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."capnp-devel".dir   = "devel";
  inputs."capnp-devel".owner = "nim-nix-pkgs";
  inputs."capnp-devel".ref   = "master";
  inputs."capnp-devel".repo  = "capnp";
  inputs."capnp-devel".type  = "github";
  inputs."capnp-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."capnp-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."capnp-master".dir   = "master";
  inputs."capnp-master".owner = "nim-nix-pkgs";
  inputs."capnp-master".ref   = "master";
  inputs."capnp-master".repo  = "capnp";
  inputs."capnp-master".type  = "github";
  inputs."capnp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."capnp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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