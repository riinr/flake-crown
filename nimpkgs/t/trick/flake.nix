{
  description = ''Game Boy Advance image conversion library and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."trick-master".url = "path:./master";
  inputs."trick-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trick-0_1_1".url = "path:./0_1_1";
  inputs."trick-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."trick-0_1_2".url = "path:./0_1_2";
  inputs."trick-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."trick-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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