{
  description = ''A package that makes creating macros easier'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."macroutils-master".dir   = "master";
  inputs."macroutils-master".owner = "nim-nix-pkgs";
  inputs."macroutils-master".ref   = "master";
  inputs."macroutils-master".repo  = "macroutils";
  inputs."macroutils-master".type  = "github";
  inputs."macroutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils-v1_1_0".dir   = "v1_1_0";
  inputs."macroutils-v1_1_0".owner = "nim-nix-pkgs";
  inputs."macroutils-v1_1_0".ref   = "master";
  inputs."macroutils-v1_1_0".repo  = "macroutils";
  inputs."macroutils-v1_1_0".type  = "github";
  inputs."macroutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils-v1_2_0".dir   = "v1_2_0";
  inputs."macroutils-v1_2_0".owner = "nim-nix-pkgs";
  inputs."macroutils-v1_2_0".ref   = "master";
  inputs."macroutils-v1_2_0".repo  = "macroutils";
  inputs."macroutils-v1_2_0".type  = "github";
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