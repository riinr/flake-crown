{
  description = ''A simple progress bar for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-progress-master.flake = false;
  inputs.src-progress-master.ref   = "refs/heads/master";
  inputs.src-progress-master.owner = "euantorano";
  inputs.src-progress-master.repo  = "progress.nim";
  inputs.src-progress-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-progress-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-progress-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}