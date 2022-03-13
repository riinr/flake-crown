{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwnt-main".dir   = "main";
  inputs."nwnt-main".owner = "nim-nix-pkgs";
  inputs."nwnt-main".ref   = "master";
  inputs."nwnt-main".repo  = "nwnt";
  inputs."nwnt-main".type  = "github";
  inputs."nwnt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_0_0".dir   = "v1_0_0";
  inputs."nwnt-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_0_0".ref   = "master";
  inputs."nwnt-v1_0_0".repo  = "nwnt";
  inputs."nwnt-v1_0_0".type  = "github";
  inputs."nwnt-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_1_0".dir   = "v1_1_0";
  inputs."nwnt-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_1_0".ref   = "master";
  inputs."nwnt-v1_1_0".repo  = "nwnt";
  inputs."nwnt-v1_1_0".type  = "github";
  inputs."nwnt-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_0".dir   = "v1_2_0";
  inputs."nwnt-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_2_0".ref   = "master";
  inputs."nwnt-v1_2_0".repo  = "nwnt";
  inputs."nwnt-v1_2_0".type  = "github";
  inputs."nwnt-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_1".dir   = "v1_2_1";
  inputs."nwnt-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_2_1".ref   = "master";
  inputs."nwnt-v1_2_1".repo  = "nwnt";
  inputs."nwnt-v1_2_1".type  = "github";
  inputs."nwnt-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_2".dir   = "v1_2_2";
  inputs."nwnt-v1_2_2".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_2_2".ref   = "master";
  inputs."nwnt-v1_2_2".repo  = "nwnt";
  inputs."nwnt-v1_2_2".type  = "github";
  inputs."nwnt-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_0".dir   = "v1_3_0";
  inputs."nwnt-v1_3_0".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_3_0".ref   = "master";
  inputs."nwnt-v1_3_0".repo  = "nwnt";
  inputs."nwnt-v1_3_0".type  = "github";
  inputs."nwnt-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_1".dir   = "v1_3_1";
  inputs."nwnt-v1_3_1".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_3_1".ref   = "master";
  inputs."nwnt-v1_3_1".repo  = "nwnt";
  inputs."nwnt-v1_3_1".type  = "github";
  inputs."nwnt-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_2".dir   = "v1_3_2";
  inputs."nwnt-v1_3_2".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_3_2".ref   = "master";
  inputs."nwnt-v1_3_2".repo  = "nwnt";
  inputs."nwnt-v1_3_2".type  = "github";
  inputs."nwnt-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_3".dir   = "v1_3_3";
  inputs."nwnt-v1_3_3".owner = "nim-nix-pkgs";
  inputs."nwnt-v1_3_3".ref   = "master";
  inputs."nwnt-v1_3_3".repo  = "nwnt";
  inputs."nwnt-v1_3_3".type  = "github";
  inputs."nwnt-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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