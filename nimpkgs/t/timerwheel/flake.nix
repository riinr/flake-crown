{
  description = ''A high performance timer based on timerwheel for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timerwheel-master".url = "path:./master";
  inputs."timerwheel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timerwheel-v0_1_2".url = "path:./v0_1_2";
  inputs."timerwheel-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}