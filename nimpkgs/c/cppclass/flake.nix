{
  description = ''Syntax sugar which helps to define C++ classes from Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cppclass-main".dir   = "main";
  inputs."cppclass-main".owner = "nim-nix-pkgs";
  inputs."cppclass-main".ref   = "master";
  inputs."cppclass-main".repo  = "cppclass";
  inputs."cppclass-main".type  = "github";
  inputs."cppclass-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppclass-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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