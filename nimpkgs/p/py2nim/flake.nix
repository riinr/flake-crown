{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."py2nim-main".url = "path:./main";
  inputs."py2nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_0".url = "path:./v0_1_0";
  inputs."py2nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_1".url = "path:./v0_1_1";
  inputs."py2nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_2".url = "path:./v0_1_2";
  inputs."py2nim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_3".url = "path:./v0_1_3";
  inputs."py2nim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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