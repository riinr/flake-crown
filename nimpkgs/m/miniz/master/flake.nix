{
  description = ''Wrapper for Miniz lib.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-miniz-master.flake = false;
  inputs.src-miniz-master.owner = "treeform";
  inputs.src-miniz-master.ref   = "master";
  inputs.src-miniz-master.repo  = "miniz";
  inputs.src-miniz-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-miniz-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-miniz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}