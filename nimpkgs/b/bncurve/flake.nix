{
  description = ''Nim Barreto-Naehrig pairing-friendly elliptic curve implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bncurve-master".dir   = "master";
  inputs."bncurve-master".owner = "nim-nix-pkgs";
  inputs."bncurve-master".ref   = "master";
  inputs."bncurve-master".repo  = "bncurve";
  inputs."bncurve-master".type  = "github";
  inputs."bncurve-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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