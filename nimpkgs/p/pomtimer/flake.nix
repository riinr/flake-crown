{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pomtimer-master".dir   = "master";
  inputs."pomtimer-master".owner = "nim-nix-pkgs";
  inputs."pomtimer-master".ref   = "master";
  inputs."pomtimer-master".repo  = "pomtimer";
  inputs."pomtimer-master".type  = "github";
  inputs."pomtimer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pomtimer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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