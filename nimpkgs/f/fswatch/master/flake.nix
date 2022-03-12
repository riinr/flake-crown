{
  description = ''Wrapper for the fswatch library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fswatch-master.flake = false;
  inputs.src-fswatch-master.owner = "FedericoCeratto";
  inputs.src-fswatch-master.ref   = "refs/heads/master";
  inputs.src-fswatch-master.repo  = "nim-fswatch";
  inputs.src-fswatch-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fswatch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fswatch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}