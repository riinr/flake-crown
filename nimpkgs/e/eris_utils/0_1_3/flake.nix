{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eris_utils-0_1_3.flake = false;
  inputs.src-eris_utils-0_1_3.owner = "~ehmry";
  inputs.src-eris_utils-0_1_3.ref   = "refs/tags/0.1.3";
  inputs.src-eris_utils-0_1_3.repo  = "eris_utils";
  inputs.src-eris_utils-0_1_3.type  = "other";
  
  inputs."eris".dir   = "nimpkgs/e/eris";
  inputs."eris".owner = "riinr";
  inputs."eris".ref   = "flake-pinning";
  inputs."eris".repo  = "flake-nimble";
  inputs."eris".type  = "github";
  inputs."eris".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eris_utils-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}