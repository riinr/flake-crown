{
  description = ''Sorted Tables for Nim, based on B-Trees'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sorta-master".dir   = "master";
  inputs."sorta-master".owner = "nim-nix-pkgs";
  inputs."sorta-master".ref   = "master";
  inputs."sorta-master".repo  = "sorta";
  inputs."sorta-master".type  = "github";
  inputs."sorta-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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