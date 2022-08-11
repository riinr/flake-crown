{
  description = ''Classical Graph Algos in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gralg-main".dir   = "main";
  inputs."gralg-main".owner = "nim-nix-pkgs";
  inputs."gralg-main".ref   = "master";
  inputs."gralg-main".repo  = "gralg";
  inputs."gralg-main".type  = "github";
  inputs."gralg-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gralg-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gralg-0_1".dir   = "0_1";
  inputs."gralg-0_1".owner = "nim-nix-pkgs";
  inputs."gralg-0_1".ref   = "master";
  inputs."gralg-0_1".repo  = "gralg";
  inputs."gralg-0_1".type  = "github";
  inputs."gralg-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gralg-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gralg-0_2".dir   = "0_2";
  inputs."gralg-0_2".owner = "nim-nix-pkgs";
  inputs."gralg-0_2".ref   = "master";
  inputs."gralg-0_2".repo  = "gralg";
  inputs."gralg-0_2".type  = "github";
  inputs."gralg-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gralg-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gralg-0_2_1".dir   = "0_2_1";
  inputs."gralg-0_2_1".owner = "nim-nix-pkgs";
  inputs."gralg-0_2_1".ref   = "master";
  inputs."gralg-0_2_1".repo  = "gralg";
  inputs."gralg-0_2_1".type  = "github";
  inputs."gralg-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gralg-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gralg-0_3_0".dir   = "0_3_0";
  inputs."gralg-0_3_0".owner = "nim-nix-pkgs";
  inputs."gralg-0_3_0".ref   = "master";
  inputs."gralg-0_3_0".repo  = "gralg";
  inputs."gralg-0_3_0".type  = "github";
  inputs."gralg-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gralg-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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