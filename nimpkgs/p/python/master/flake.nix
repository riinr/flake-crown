{
  description = ''Wrapper to interface with Python 1/2 interpreter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-python-master.flake = false;
  inputs.src-python-master.ref   = "refs/heads/master";
  inputs.src-python-master.owner = "nim-lang";
  inputs.src-python-master.repo  = "python";
  inputs.src-python-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-python-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-python-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}