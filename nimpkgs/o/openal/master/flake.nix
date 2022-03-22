{
  description = ''An OpenAL wrapper for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openal-master.flake = false;
  inputs.src-openal-master.ref   = "refs/heads/master";
  inputs.src-openal-master.owner = "treeform";
  inputs.src-openal-master.repo  = "openal";
  inputs.src-openal-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}