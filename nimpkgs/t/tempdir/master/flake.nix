{
  description = ''A Nim library to create and manage temporary directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tempdir-master.flake = false;
  inputs.src-tempdir-master.ref   = "refs/heads/master";
  inputs.src-tempdir-master.owner = "euantorano";
  inputs.src-tempdir-master.repo  = "tempdir.nim";
  inputs.src-tempdir-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tempdir-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tempdir-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}