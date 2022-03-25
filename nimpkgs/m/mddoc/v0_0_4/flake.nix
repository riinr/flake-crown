{
  description = ''Generate Nim API docs in markdown for GitHub's README.md files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mddoc-v0_0_4.flake = false;
  inputs.src-mddoc-v0_0_4.ref   = "refs/tags/v0.0.4";
  inputs.src-mddoc-v0_0_4.owner = "treeform";
  inputs.src-mddoc-v0_0_4.repo  = "mddoc";
  inputs.src-mddoc-v0_0_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mddoc-v0_0_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mddoc-v0_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}