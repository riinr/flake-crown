{
  description = ''Wrapper of the file procedures to provide an interface as similar as possible to that of Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pythonfile-master.flake = false;
  inputs.src-pythonfile-master.owner = "achesak";
  inputs.src-pythonfile-master.ref   = "refs/heads/master";
  inputs.src-pythonfile-master.repo  = "nim-pythonfile";
  inputs.src-pythonfile-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pythonfile-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pythonfile-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}