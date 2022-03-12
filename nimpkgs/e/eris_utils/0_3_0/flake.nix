{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eris_utils-0_3_0.flake = false;
  inputs.src-eris_utils-0_3_0.owner = "~ehmry";
  inputs.src-eris_utils-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-eris_utils-0_3_0.repo  = "eris_utils";
  inputs.src-eris_utils-0_3_0.type  = "other";
  
  inputs."eris".dir   = "nimpkgs/e/eris";
  inputs."eris".owner = "riinr";
  inputs."eris".ref   = "flake-pinning";
  inputs."eris".repo  = "flake-nimble";
  inputs."eris".type  = "github";
  inputs."eris".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw".dir   = "nimpkgs/t/tkrzw";
  inputs."tkrzw".owner = "riinr";
  inputs."tkrzw".ref   = "flake-pinning";
  inputs."tkrzw".repo  = "flake-nimble";
  inputs."tkrzw".type  = "github";
  inputs."tkrzw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eris_utils-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}