{
  description = ''Robert Penner Easing Functions for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easings-master.flake = false;
  inputs.src-easings-master.owner = "juancarlospaco";
  inputs.src-easings-master.ref   = "refs/heads/master";
  inputs.src-easings-master.repo  = "nim-easings";
  inputs.src-easings-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easings-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easings-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}