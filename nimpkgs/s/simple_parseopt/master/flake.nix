{
  description = ''Nim module which provides clean, zero-effort command line parsing.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simple_parseopt-master.flake = false;
  inputs.src-simple_parseopt-master.owner = "onelivesleft";
  inputs.src-simple_parseopt-master.ref   = "refs/heads/master";
  inputs.src-simple_parseopt-master.repo  = "simple_parseopt";
  inputs.src-simple_parseopt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simple_parseopt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simple_parseopt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}