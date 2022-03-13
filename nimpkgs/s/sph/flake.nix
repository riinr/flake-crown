{
  description = ''Large number of cryptographic hashes for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sph-master".dir   = "master";
  inputs."sph-master".owner = "nim-nix-pkgs";
  inputs."sph-master".ref   = "master";
  inputs."sph-master".repo  = "sph";
  inputs."sph-master".type  = "github";
  inputs."sph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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