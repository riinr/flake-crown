{
  description = ''Glob pattern matching for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-globby-master.flake = false;
  inputs.src-globby-master.owner = "treeform";
  inputs.src-globby-master.ref   = "refs/heads/master";
  inputs.src-globby-master.repo  = "globby";
  inputs.src-globby-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-globby-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-globby-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}