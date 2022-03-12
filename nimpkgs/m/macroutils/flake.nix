{
  description = ''A package that makes creating macros easier'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."macroutils-master".url = "path:./master";
  inputs."macroutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils-v1_1_0".url = "path:./v1_1_0";
  inputs."macroutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils-v1_2_0".url = "path:./v1_2_0";
  inputs."macroutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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