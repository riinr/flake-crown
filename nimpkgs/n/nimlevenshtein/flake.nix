{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlevenshtein-master".dir   = "master";
  inputs."nimlevenshtein-master".owner = "nim-nix-pkgs";
  inputs."nimlevenshtein-master".ref   = "master";
  inputs."nimlevenshtein-master".repo  = "nimlevenshtein";
  inputs."nimlevenshtein-master".type  = "github";
  inputs."nimlevenshtein-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlevenshtein-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlevenshtein-0_1_0".dir   = "0_1_0";
  inputs."nimlevenshtein-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimlevenshtein-0_1_0".ref   = "master";
  inputs."nimlevenshtein-0_1_0".repo  = "nimlevenshtein";
  inputs."nimlevenshtein-0_1_0".type  = "github";
  inputs."nimlevenshtein-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlevenshtein-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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