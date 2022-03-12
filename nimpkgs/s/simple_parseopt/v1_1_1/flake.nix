{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simple_parseopt-v1_1_1.flake = false;
  inputs.src-simple_parseopt-v1_1_1.owner = "onelivesleft";
  inputs.src-simple_parseopt-v1_1_1.ref   = "refs/tags/v1.1.1";
  inputs.src-simple_parseopt-v1_1_1.repo  = "simple_parseopt";
  inputs.src-simple_parseopt-v1_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-v1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simple_parseopt-v1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}