{
  description = ''Nim binding to libfswatch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libfswatch-master.flake = false;
  inputs.src-libfswatch-master.ref   = "refs/heads/master";
  inputs.src-libfswatch-master.owner = "paul-nameless";
  inputs.src-libfswatch-master.repo  = "nim-fswatch";
  inputs.src-libfswatch-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libfswatch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libfswatch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}