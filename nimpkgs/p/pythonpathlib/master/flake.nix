{
  description = ''Module for working with paths that is as similar as possible to Python's pathlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pythonpathlib-master.flake = false;
  inputs.src-pythonpathlib-master.ref   = "refs/heads/master";
  inputs.src-pythonpathlib-master.owner = "achesak";
  inputs.src-pythonpathlib-master.repo  = "nim-pythonpathlib";
  inputs.src-pythonpathlib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pythonpathlib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pythonpathlib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}