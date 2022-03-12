{
  description = ''A performant Nim parsing library built for humans.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."microparsec-master".url = "path:./master";
  inputs."microparsec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microparsec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."microparsec-v0_1-alpha".url = "path:./v0_1-alpha";
  inputs."microparsec-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."microparsec-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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