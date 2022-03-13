{
  description = ''eachdo executes commands with each multidimensional values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eachdo-main".dir   = "main";
  inputs."eachdo-main".owner = "nim-nix-pkgs";
  inputs."eachdo-main".ref   = "master";
  inputs."eachdo-main".repo  = "eachdo";
  inputs."eachdo-main".type  = "github";
  inputs."eachdo-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eachdo-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eachdo-v0_1_0".dir   = "v0_1_0";
  inputs."eachdo-v0_1_0".owner = "nim-nix-pkgs";
  inputs."eachdo-v0_1_0".ref   = "master";
  inputs."eachdo-v0_1_0".repo  = "eachdo";
  inputs."eachdo-v0_1_0".type  = "github";
  inputs."eachdo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eachdo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eachdo-v0_1_1".dir   = "v0_1_1";
  inputs."eachdo-v0_1_1".owner = "nim-nix-pkgs";
  inputs."eachdo-v0_1_1".ref   = "master";
  inputs."eachdo-v0_1_1".repo  = "eachdo";
  inputs."eachdo-v0_1_1".type  = "github";
  inputs."eachdo-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eachdo-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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