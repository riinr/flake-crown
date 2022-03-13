{
  description = ''Simple watchdog (watch file changes modified, deleted, created) in nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwatchdog-master".dir   = "master";
  inputs."nwatchdog-master".owner = "nim-nix-pkgs";
  inputs."nwatchdog-master".ref   = "master";
  inputs."nwatchdog-master".repo  = "nwatchdog";
  inputs."nwatchdog-master".type  = "github";
  inputs."nwatchdog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-0_0_5".dir   = "0_0_5";
  inputs."nwatchdog-0_0_5".owner = "nim-nix-pkgs";
  inputs."nwatchdog-0_0_5".ref   = "master";
  inputs."nwatchdog-0_0_5".repo  = "nwatchdog";
  inputs."nwatchdog-0_0_5".type  = "github";
  inputs."nwatchdog-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-0_0_7".dir   = "0_0_7";
  inputs."nwatchdog-0_0_7".owner = "nim-nix-pkgs";
  inputs."nwatchdog-0_0_7".ref   = "master";
  inputs."nwatchdog-0_0_7".repo  = "nwatchdog";
  inputs."nwatchdog-0_0_7".type  = "github";
  inputs."nwatchdog-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-v0_0_7".dir   = "v0_0_7";
  inputs."nwatchdog-v0_0_7".owner = "nim-nix-pkgs";
  inputs."nwatchdog-v0_0_7".ref   = "master";
  inputs."nwatchdog-v0_0_7".repo  = "nwatchdog";
  inputs."nwatchdog-v0_0_7".type  = "github";
  inputs."nwatchdog-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwatchdog-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwatchdog-v0_0_8".dir   = "v0_0_8";
  inputs."nwatchdog-v0_0_8".owner = "nim-nix-pkgs";
  inputs."nwatchdog-v0_0_8".ref   = "master";
  inputs."nwatchdog-v0_0_8".repo  = "nwatchdog";
  inputs."nwatchdog-v0_0_8".type  = "github";
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