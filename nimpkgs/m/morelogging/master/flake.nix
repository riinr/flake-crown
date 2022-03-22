{
  description = ''Logging library with support for async IO, multithreading, Journald.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-morelogging-master.flake = false;
  inputs.src-morelogging-master.owner = "FedericoCeratto";
  inputs.src-morelogging-master.ref   = "master";
  inputs.src-morelogging-master.repo  = "nim-morelogging";
  inputs.src-morelogging-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-morelogging-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-morelogging-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}