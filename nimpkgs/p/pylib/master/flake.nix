{
  description = ''Nim library with python-like functions and operators'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pylib-master.flake = false;
  inputs.src-pylib-master.ref   = "refs/heads/master";
  inputs.src-pylib-master.owner = "Yardanico";
  inputs.src-pylib-master.repo  = "nimpylib";
  inputs.src-pylib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pylib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pylib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}