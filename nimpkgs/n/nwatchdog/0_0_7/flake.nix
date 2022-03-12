{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwatchdog-0_0_7.flake = false;
  inputs.src-nwatchdog-0_0_7.owner = "zendbit";
  inputs.src-nwatchdog-0_0_7.ref   = "refs/tags/0.0.7";
  inputs.src-nwatchdog-0_0_7.repo  = "nim.nwatchdog";
  inputs.src-nwatchdog-0_0_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwatchdog-0_0_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nwatchdog-0_0_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}