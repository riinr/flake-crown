{
  description = ''Infer & generate command-line interface/option/argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cligen-v1_5_14.flake = false;
  inputs.src-cligen-v1_5_14.ref   = "refs/tags/v1.5.14";
  inputs.src-cligen-v1_5_14.owner = "c-blake";
  inputs.src-cligen-v1_5_14.repo  = "cligen";
  inputs.src-cligen-v1_5_14.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v1_5_14"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cligen-v1_5_14";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}