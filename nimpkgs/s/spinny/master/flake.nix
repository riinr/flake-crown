{
  description = ''Spinny is a tiny terminal spinner package for the Nim Programming Language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spinny-master.flake = false;
  inputs.src-spinny-master.owner = "Yardanico";
  inputs.src-spinny-master.ref   = "refs/heads/master";
  inputs.src-spinny-master.repo  = "spinny";
  inputs.src-spinny-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spinny-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spinny-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}