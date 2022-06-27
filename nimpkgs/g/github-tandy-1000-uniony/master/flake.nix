{
  description = ''A jsony plugin to enable union support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-tandy-1000-uniony-master.flake = false;
  inputs.src-github-tandy-1000-uniony-master.ref   = "refs/heads/master";
  inputs.src-github-tandy-1000-uniony-master.owner = "tandy-1000";
  inputs.src-github-tandy-1000-uniony-master.repo  = "uniony";
  inputs.src-github-tandy-1000-uniony-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-tandy-1000-uniony-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-tandy-1000-uniony-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}