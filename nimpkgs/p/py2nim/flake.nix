{
  description = ''Py2Nim is a tool to translate Python code to Nim. The output is human-readable Nim code, meant to be tweaked by hand after the translation process.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."py2nim-main".dir   = "main";
  inputs."py2nim-main".owner = "nim-nix-pkgs";
  inputs."py2nim-main".ref   = "master";
  inputs."py2nim-main".repo  = "py2nim";
  inputs."py2nim-main".type  = "github";
  inputs."py2nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_0".dir   = "v0_1_0";
  inputs."py2nim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."py2nim-v0_1_0".ref   = "master";
  inputs."py2nim-v0_1_0".repo  = "py2nim";
  inputs."py2nim-v0_1_0".type  = "github";
  inputs."py2nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_1".dir   = "v0_1_1";
  inputs."py2nim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."py2nim-v0_1_1".ref   = "master";
  inputs."py2nim-v0_1_1".repo  = "py2nim";
  inputs."py2nim-v0_1_1".type  = "github";
  inputs."py2nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_2".dir   = "v0_1_2";
  inputs."py2nim-v0_1_2".owner = "nim-nix-pkgs";
  inputs."py2nim-v0_1_2".ref   = "master";
  inputs."py2nim-v0_1_2".repo  = "py2nim";
  inputs."py2nim-v0_1_2".type  = "github";
  inputs."py2nim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."py2nim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."py2nim-v0_1_3".dir   = "v0_1_3";
  inputs."py2nim-v0_1_3".owner = "nim-nix-pkgs";
  inputs."py2nim-v0_1_3".ref   = "master";
  inputs."py2nim-v0_1_3".repo  = "py2nim";
  inputs."py2nim-v0_1_3".type  = "github";
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