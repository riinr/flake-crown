{
  description = ''A simple implementation of the classic snake game'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."snekim-main".dir   = "main";
  inputs."snekim-main".owner = "nim-nix-pkgs";
  inputs."snekim-main".ref   = "master";
  inputs."snekim-main".repo  = "snekim";
  inputs."snekim-main".type  = "github";
  inputs."snekim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snekim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snekim-v1_0_0".dir   = "v1_0_0";
  inputs."snekim-v1_0_0".owner = "nim-nix-pkgs";
  inputs."snekim-v1_0_0".ref   = "master";
  inputs."snekim-v1_0_0".repo  = "snekim";
  inputs."snekim-v1_0_0".type  = "github";
  inputs."snekim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snekim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snekim-v1_1_0".dir   = "v1_1_0";
  inputs."snekim-v1_1_0".owner = "nim-nix-pkgs";
  inputs."snekim-v1_1_0".ref   = "master";
  inputs."snekim-v1_1_0".repo  = "snekim";
  inputs."snekim-v1_1_0".type  = "github";
  inputs."snekim-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snekim-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snekim-v1_2_0".dir   = "v1_2_0";
  inputs."snekim-v1_2_0".owner = "nim-nix-pkgs";
  inputs."snekim-v1_2_0".ref   = "master";
  inputs."snekim-v1_2_0".repo  = "snekim";
  inputs."snekim-v1_2_0".type  = "github";
  inputs."snekim-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snekim-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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