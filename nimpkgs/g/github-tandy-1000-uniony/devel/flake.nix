{
  description = ''A jsony plugin to enable union support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-tandy-1000-uniony-devel.flake = false;
  inputs.src-github-tandy-1000-uniony-devel.ref   = "refs/heads/devel";
  inputs.src-github-tandy-1000-uniony-devel.owner = "tandy-1000";
  inputs.src-github-tandy-1000-uniony-devel.repo  = "uniony";
  inputs.src-github-tandy-1000-uniony-devel.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-tandy-1000-uniony-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-tandy-1000-uniony-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}