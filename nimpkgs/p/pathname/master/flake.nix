{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pathname-master.flake = false;
  inputs.src-pathname-master.owner = "RaimundHuebel";
  inputs.src-pathname-master.ref   = "refs/heads/master";
  inputs.src-pathname-master.repo  = "nimpathname";
  inputs.src-pathname-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pathname-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pathname-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}