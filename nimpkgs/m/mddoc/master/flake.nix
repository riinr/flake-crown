{
  description = ''Generate Nim API docs in markdown for GitHub's README.md files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mddoc-master.flake = false;
  inputs.src-mddoc-master.owner = "treeform";
  inputs.src-mddoc-master.ref   = "master";
  inputs.src-mddoc-master.repo  = "mddoc";
  inputs.src-mddoc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mddoc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}