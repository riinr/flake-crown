{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."antlr4nim-main".dir   = "main";
  inputs."antlr4nim-main".owner = "nim-nix-pkgs";
  inputs."antlr4nim-main".ref   = "master";
  inputs."antlr4nim-main".repo  = "antlr4nim";
  inputs."antlr4nim-main".type  = "github";
  inputs."antlr4nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."antlr4nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."antlr4nim-v0_1_0".dir   = "v0_1_0";
  inputs."antlr4nim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."antlr4nim-v0_1_0".ref   = "master";
  inputs."antlr4nim-v0_1_0".repo  = "antlr4nim";
  inputs."antlr4nim-v0_1_0".type  = "github";
  inputs."antlr4nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."antlr4nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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