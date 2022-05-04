{
  description = ''A simple finite-state machine for @nim-lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fsm-master".dir   = "master";
  inputs."fsm-master".owner = "nim-nix-pkgs";
  inputs."fsm-master".ref   = "master";
  inputs."fsm-master".repo  = "fsm";
  inputs."fsm-master".type  = "github";
  inputs."fsm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fsm-0_1_1".dir   = "0_1_1";
  inputs."fsm-0_1_1".owner = "nim-nix-pkgs";
  inputs."fsm-0_1_1".ref   = "master";
  inputs."fsm-0_1_1".repo  = "fsm";
  inputs."fsm-0_1_1".type  = "github";
  inputs."fsm-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsm-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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