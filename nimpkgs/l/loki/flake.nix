{
  description = ''A small library for writing cli programs in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loki-master".url = "path:./master";
  inputs."loki-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_1_0".url = "path:./0_1_0";
  inputs."loki-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_1_1".url = "path:./0_1_1";
  inputs."loki-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_2_0".url = "path:./0_2_0";
  inputs."loki-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_3_0".url = "path:./0_3_0";
  inputs."loki-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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