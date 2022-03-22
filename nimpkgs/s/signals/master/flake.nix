{
  description = ''Signals/slots observer pattern for event-driven programming.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-signals-master.flake = false;
  inputs.src-signals-master.ref   = "refs/heads/master";
  inputs.src-signals-master.owner = "fowlmouth";
  inputs.src-signals-master.repo  = "signals.nim";
  inputs.src-signals-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-signals-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-signals-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}