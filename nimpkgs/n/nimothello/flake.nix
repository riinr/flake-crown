{
  description = ''A teminal othello (reversi) in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimothello-master".url = "path:./master";
  inputs."nimothello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimothello-v1_0_0".url = "path:./v1_0_0";
  inputs."nimothello-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimothello-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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