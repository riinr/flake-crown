{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimdenter-master".url = "path:./master";
  inputs."nimdenter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimdenter-2022_1_7".url = "path:./2022_1_7";
  inputs."nimdenter-2022_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdenter-2022_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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