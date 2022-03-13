{
  description = ''A glue wrapper to do awk-style text processing with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."naw-master".dir   = "master";
  inputs."naw-master".owner = "nim-nix-pkgs";
  inputs."naw-master".ref   = "master";
  inputs."naw-master".repo  = "naw";
  inputs."naw-master".type  = "github";
  inputs."naw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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