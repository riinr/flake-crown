{
  description = ''Bindings for CFITSIO, a library to read/write FITSIO images and tables.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcfitsio-master".dir   = "master";
  inputs."nimcfitsio-master".owner = "nim-nix-pkgs";
  inputs."nimcfitsio-master".ref   = "master";
  inputs."nimcfitsio-master".repo  = "nimcfitsio";
  inputs."nimcfitsio-master".type  = "github";
  inputs."nimcfitsio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcfitsio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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