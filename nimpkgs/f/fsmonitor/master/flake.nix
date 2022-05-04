{
  description = ''The ex-stdlib module fsmonitor.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fsmonitor-master.flake = false;
  inputs.src-fsmonitor-master.ref   = "refs/heads/master";
  inputs.src-fsmonitor-master.owner = "nim-lang";
  inputs.src-fsmonitor-master.repo  = "graveyard";
    inputs.src-fsmonitor-master.dir   = "fsmonitor";
inputs.src-fsmonitor-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fsmonitor-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fsmonitor-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}