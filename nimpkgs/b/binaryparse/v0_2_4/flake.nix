{
  description = ''Binary parser (and writer) in pure Nim. Generates efficient parsing procedures that handle many commonly seen patterns seen in binary files and does sub-byte field reading.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-binaryparse-v0_2_4.flake = false;
  inputs.src-binaryparse-v0_2_4.owner = "PMunch";
  inputs.src-binaryparse-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-binaryparse-v0_2_4.repo  = "binaryparse";
  inputs.src-binaryparse-v0_2_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-binaryparse-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-binaryparse-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}