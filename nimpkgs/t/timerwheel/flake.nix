{
  description = ''A high performance timer based on timerwheel for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timerwheel-master".dir   = "master";
  inputs."timerwheel-master".owner = "nim-nix-pkgs";
  inputs."timerwheel-master".ref   = "master";
  inputs."timerwheel-master".repo  = "timerwheel";
  inputs."timerwheel-master".type  = "github";
  inputs."timerwheel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timerwheel-v0_1_2".dir   = "v0_1_2";
  inputs."timerwheel-v0_1_2".owner = "nim-nix-pkgs";
  inputs."timerwheel-v0_1_2".ref   = "master";
  inputs."timerwheel-v0_1_2".repo  = "timerwheel";
  inputs."timerwheel-v0_1_2".type  = "github";
  inputs."timerwheel-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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