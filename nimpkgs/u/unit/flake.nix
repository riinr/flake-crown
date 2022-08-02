{
  description = ''A library that provides unit types in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unit-develop".dir   = "develop";
  inputs."unit-develop".owner = "nim-nix-pkgs";
  inputs."unit-develop".ref   = "master";
  inputs."unit-develop".repo  = "unit";
  inputs."unit-develop".type  = "github";
  inputs."unit-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unit-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unit-main".dir   = "main";
  inputs."unit-main".owner = "nim-nix-pkgs";
  inputs."unit-main".ref   = "master";
  inputs."unit-main".repo  = "unit";
  inputs."unit-main".type  = "github";
  inputs."unit-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unit-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unit-ver_0_3_0".dir   = "ver_0_3_0";
  inputs."unit-ver_0_3_0".owner = "nim-nix-pkgs";
  inputs."unit-ver_0_3_0".ref   = "master";
  inputs."unit-ver_0_3_0".repo  = "unit";
  inputs."unit-ver_0_3_0".type  = "github";
  inputs."unit-ver_0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unit-ver_0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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