{
  description = ''Generate Nim API docs in markdown for GitHub's README.md files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mddoc-0_0_3.flake = false;
  inputs.src-mddoc-0_0_3.ref   = "refs/tags/0.0.3";
  inputs.src-mddoc-0_0_3.owner = "treeform";
  inputs.src-mddoc-0_0_3.repo  = "mddoc";
  inputs.src-mddoc-0_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-0_0_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mddoc-0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}