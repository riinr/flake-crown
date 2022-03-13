{
  description = ''A library for working with the CFG configuration format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."config-main".dir   = "main";
  inputs."config-main".owner = "nim-nix-pkgs";
  inputs."config-main".ref   = "master";
  inputs."config-main".repo  = "config";
  inputs."config-main".type  = "github";
  inputs."config-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."config-0_1_0".dir   = "0_1_0";
  inputs."config-0_1_0".owner = "nim-nix-pkgs";
  inputs."config-0_1_0".ref   = "master";
  inputs."config-0_1_0".repo  = "config";
  inputs."config-0_1_0".type  = "github";
  inputs."config-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."config-0_1_1".dir   = "0_1_1";
  inputs."config-0_1_1".owner = "nim-nix-pkgs";
  inputs."config-0_1_1".ref   = "master";
  inputs."config-0_1_1".repo  = "config";
  inputs."config-0_1_1".type  = "github";
  inputs."config-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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