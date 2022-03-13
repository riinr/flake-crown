{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."c2nim-master".dir   = "master";
  inputs."c2nim-master".owner = "nim-nix-pkgs";
  inputs."c2nim-master".ref   = "master";
  inputs."c2nim-master".repo  = "c2nim";
  inputs."c2nim-master".type  = "github";
  inputs."c2nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_15".dir   = "0_9_15";
  inputs."c2nim-0_9_15".owner = "nim-nix-pkgs";
  inputs."c2nim-0_9_15".ref   = "master";
  inputs."c2nim-0_9_15".repo  = "c2nim";
  inputs."c2nim-0_9_15".type  = "github";
  inputs."c2nim-0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_16".dir   = "0_9_16";
  inputs."c2nim-0_9_16".owner = "nim-nix-pkgs";
  inputs."c2nim-0_9_16".ref   = "master";
  inputs."c2nim-0_9_16".repo  = "c2nim";
  inputs."c2nim-0_9_16".type  = "github";
  inputs."c2nim-0_9_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_17".dir   = "0_9_17";
  inputs."c2nim-0_9_17".owner = "nim-nix-pkgs";
  inputs."c2nim-0_9_17".ref   = "master";
  inputs."c2nim-0_9_17".repo  = "c2nim";
  inputs."c2nim-0_9_17".type  = "github";
  inputs."c2nim-0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim-0_9_18".dir   = "0_9_18";
  inputs."c2nim-0_9_18".owner = "nim-nix-pkgs";
  inputs."c2nim-0_9_18".ref   = "master";
  inputs."c2nim-0_9_18".repo  = "c2nim";
  inputs."c2nim-0_9_18".type  = "github";
  inputs."c2nim-0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim-0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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