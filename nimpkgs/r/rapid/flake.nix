{
  description = ''A game engine for rapid development and easy prototyping'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rapid-master".url = "path:./master";
  inputs."rapid-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rapid-2019_1".url = "path:./2019_1";
  inputs."rapid-2019_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rapid-2019_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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