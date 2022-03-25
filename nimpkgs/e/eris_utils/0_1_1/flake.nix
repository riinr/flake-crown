{
  description = ''Utilities for working with the Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eris_utils-0_1_1.flake = false;
  inputs.src-eris_utils-0_1_1.ref   = "0.1.1";
  inputs.src-eris_utils-0_1_1.owner = "~ehmry";
  inputs.src-eris_utils-0_1_1.repo  = "eris_utils";
  inputs.src-eris_utils-0_1_1.type  = "sourcehut";
  
  inputs."eris".owner = "nim-nix-pkgs";
  inputs."eris".ref   = "master";
  inputs."eris".repo  = "eris";
  inputs."eris".dir   = "0_7_1";
  inputs."eris".type  = "github";
  inputs."eris".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eris_utils-0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-eris_utils-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}