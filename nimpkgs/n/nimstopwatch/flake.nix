{
  description = ''A Nim-based, non-graphical application designed to measure the amount of time elapsed from its activation to deactivation, includes total elapsed time, lap, and split times.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimstopwatch-master".dir   = "master";
  inputs."nimstopwatch-master".owner = "nim-nix-pkgs";
  inputs."nimstopwatch-master".ref   = "master";
  inputs."nimstopwatch-master".repo  = "nimstopwatch";
  inputs."nimstopwatch-master".type  = "github";
  inputs."nimstopwatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimstopwatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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