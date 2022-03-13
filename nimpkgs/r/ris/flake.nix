{
  description = ''Module for working with RIS citation files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ris-master".dir   = "master";
  inputs."ris-master".owner = "nim-nix-pkgs";
  inputs."ris-master".ref   = "master";
  inputs."ris-master".repo  = "ris";
  inputs."ris-master".type  = "github";
  inputs."ris-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ris-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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