{
  description = ''The Levenshtein Nim module contains functions for fast computation of Levenshtein distance and string similarity.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlevenshtein-0_1_0.flake = false;
  inputs.src-nimlevenshtein-0_1_0.owner = "oswjk";
  inputs.src-nimlevenshtein-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-nimlevenshtein-0_1_0.repo  = "nimlevenshtein";
  inputs.src-nimlevenshtein-0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlevenshtein-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlevenshtein-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}