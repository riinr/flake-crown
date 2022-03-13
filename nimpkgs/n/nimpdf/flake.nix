{
  description = ''library for generating PDF files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpdf-master".dir   = "master";
  inputs."nimpdf-master".owner = "nim-nix-pkgs";
  inputs."nimpdf-master".ref   = "master";
  inputs."nimpdf-master".repo  = "nimpdf";
  inputs."nimpdf-master".type  = "github";
  inputs."nimpdf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpdf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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