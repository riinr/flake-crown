{
  description = ''libBigWig wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbigwig-master".dir   = "master";
  inputs."nimbigwig-master".owner = "nim-nix-pkgs";
  inputs."nimbigwig-master".ref   = "master";
  inputs."nimbigwig-master".repo  = "nimbigwig";
  inputs."nimbigwig-master".type  = "github";
  inputs."nimbigwig-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbigwig-v0_1_1".dir   = "v0_1_1";
  inputs."nimbigwig-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimbigwig-v0_1_1".ref   = "master";
  inputs."nimbigwig-v0_1_1".repo  = "nimbigwig";
  inputs."nimbigwig-v0_1_1".type  = "github";
  inputs."nimbigwig-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbigwig-v0_1_2".dir   = "v0_1_2";
  inputs."nimbigwig-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimbigwig-v0_1_2".ref   = "master";
  inputs."nimbigwig-v0_1_2".repo  = "nimbigwig";
  inputs."nimbigwig-v0_1_2".type  = "github";
  inputs."nimbigwig-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbigwig-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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