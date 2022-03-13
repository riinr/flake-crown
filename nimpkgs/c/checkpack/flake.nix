{
  description = ''Tiny library to check if a system package is already installed.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."checkpack-develop".dir   = "develop";
  inputs."checkpack-develop".owner = "nim-nix-pkgs";
  inputs."checkpack-develop".ref   = "master";
  inputs."checkpack-develop".repo  = "checkpack";
  inputs."checkpack-develop".type  = "github";
  inputs."checkpack-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-master".dir   = "master";
  inputs."checkpack-master".owner = "nim-nix-pkgs";
  inputs."checkpack-master".ref   = "master";
  inputs."checkpack-master".repo  = "checkpack";
  inputs."checkpack-master".type  = "github";
  inputs."checkpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_1_0".dir   = "0_1_0";
  inputs."checkpack-0_1_0".owner = "nim-nix-pkgs";
  inputs."checkpack-0_1_0".ref   = "master";
  inputs."checkpack-0_1_0".repo  = "checkpack";
  inputs."checkpack-0_1_0".type  = "github";
  inputs."checkpack-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_1_1".dir   = "0_1_1";
  inputs."checkpack-0_1_1".owner = "nim-nix-pkgs";
  inputs."checkpack-0_1_1".ref   = "master";
  inputs."checkpack-0_1_1".repo  = "checkpack";
  inputs."checkpack-0_1_1".type  = "github";
  inputs."checkpack-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_2_0".dir   = "0_2_0";
  inputs."checkpack-0_2_0".owner = "nim-nix-pkgs";
  inputs."checkpack-0_2_0".ref   = "master";
  inputs."checkpack-0_2_0".repo  = "checkpack";
  inputs."checkpack-0_2_0".type  = "github";
  inputs."checkpack-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_3_0".dir   = "0_3_0";
  inputs."checkpack-0_3_0".owner = "nim-nix-pkgs";
  inputs."checkpack-0_3_0".ref   = "master";
  inputs."checkpack-0_3_0".repo  = "checkpack";
  inputs."checkpack-0_3_0".type  = "github";
  inputs."checkpack-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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