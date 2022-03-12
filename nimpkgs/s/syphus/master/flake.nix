{
  description = ''An implementation of the tabu search heuristic in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-syphus-master.flake = false;
  inputs.src-syphus-master.owner = "makingspace";
  inputs.src-syphus-master.ref   = "refs/heads/master";
  inputs.src-syphus-master.repo  = "syphus";
  inputs.src-syphus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-syphus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-syphus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}