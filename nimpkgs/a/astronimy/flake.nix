{
  description = ''Astronomical library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."astronimy-master".dir   = "master";
  inputs."astronimy-master".owner = "nim-nix-pkgs";
  inputs."astronimy-master".ref   = "master";
  inputs."astronimy-master".repo  = "astronimy";
  inputs."astronimy-master".type  = "github";
  inputs."astronimy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astronimy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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