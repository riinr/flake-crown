{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlevenshtein-master".url = "path:./master";
  inputs."nimlevenshtein-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlevenshtein-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlevenshtein-0_1_0".url = "path:./0_1_0";
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