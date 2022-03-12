{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwatchdog-master".url = "path:./master";
  inputs."nwatchdog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-0_0_5".url = "path:./0_0_5";
  inputs."nwatchdog-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-0_0_7".url = "path:./0_0_7";
  inputs."nwatchdog-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-v0_0_7".url = "path:./v0_0_7";
  inputs."nwatchdog-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-v0_0_8".url = "path:./v0_0_8";
  inputs."nwatchdog-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}