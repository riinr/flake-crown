{
  description = ''Nim CMAES library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcmaes-master.flake = false;
  inputs.src-nimcmaes-master.owner = "zevv";
  inputs.src-nimcmaes-master.ref   = "master";
  inputs.src-nimcmaes-master.repo  = "nimcmaes";
  inputs.src-nimcmaes-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcmaes-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcmaes-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}