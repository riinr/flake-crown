{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwatchdog-0_0_5.flake = false;
  inputs.src-nwatchdog-0_0_5.owner = "zendbit";
  inputs.src-nwatchdog-0_0_5.ref   = "0_0_5";
  inputs.src-nwatchdog-0_0_5.repo  = "nim.nwatchdog";
  inputs.src-nwatchdog-0_0_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwatchdog-0_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nwatchdog-0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}