{
  description = ''Utilities for parsing CP437 and ANSI escape codes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansiutils-master".dir   = "master";
  inputs."ansiutils-master".owner = "nim-nix-pkgs";
  inputs."ansiutils-master".ref   = "master";
  inputs."ansiutils-master".repo  = "ansiutils";
  inputs."ansiutils-master".type  = "github";
  inputs."ansiutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiutils-0_1_0".dir   = "0_1_0";
  inputs."ansiutils-0_1_0".owner = "nim-nix-pkgs";
  inputs."ansiutils-0_1_0".ref   = "master";
  inputs."ansiutils-0_1_0".repo  = "ansiutils";
  inputs."ansiutils-0_1_0".type  = "github";
  inputs."ansiutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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