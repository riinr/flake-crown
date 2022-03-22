{
  description = ''Unit types for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-metric-master.flake = false;
  inputs.src-metric-master.ref   = "refs/heads/master";
  inputs.src-metric-master.owner = "mjendrusch";
  inputs.src-metric-master.repo  = "metric";
  inputs.src-metric-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-metric-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-metric-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}