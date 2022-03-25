{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simple_parseopt-v1_0_9.flake = false;
  inputs.src-simple_parseopt-v1_0_9.ref   = "refs/tags/v1.0.9";
  inputs.src-simple_parseopt-v1_0_9.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_0_9.repo  = "simple_parseopt";
  inputs.src-simple_parseopt-v1_0_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-v1_0_9"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-simple_parseopt-v1_0_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}