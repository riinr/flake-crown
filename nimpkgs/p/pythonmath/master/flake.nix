{
  description = ''Module to provide an interface as similar as possible to Python's math libary'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pythonmath-master.flake = false;
  inputs.src-pythonmath-master.owner = "achesak";
  inputs.src-pythonmath-master.ref   = "refs/heads/master";
  inputs.src-pythonmath-master.repo  = "nim-pythonmath";
  inputs.src-pythonmath-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pythonmath-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pythonmath-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}