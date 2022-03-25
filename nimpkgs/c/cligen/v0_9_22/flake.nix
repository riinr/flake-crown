{
  description = ''Infer & generate command-line interace/option/argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cligen-v0_9_22.flake = false;
  inputs.src-cligen-v0_9_22.ref   = "refs/tags/v0.9.22";
  inputs.src-cligen-v0_9_22.owner = "c-blake";
  inputs.src-cligen-v0_9_22.repo  = "cligen";
  inputs.src-cligen-v0_9_22.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_22"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cligen-v0_9_22";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}