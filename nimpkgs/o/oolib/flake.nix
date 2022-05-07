{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oolib-develop".dir   = "develop";
  inputs."oolib-develop".owner = "nim-nix-pkgs";
  inputs."oolib-develop".ref   = "master";
  inputs."oolib-develop".repo  = "oolib";
  inputs."oolib-develop".type  = "github";
  inputs."oolib-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-main".dir   = "main";
  inputs."oolib-main".owner = "nim-nix-pkgs";
  inputs."oolib-main".ref   = "master";
  inputs."oolib-main".repo  = "oolib";
  inputs."oolib-main".type  = "github";
  inputs."oolib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-0_1_0".dir   = "0_1_0";
  inputs."classes-0_1_0".owner = "nim-nix-pkgs";
  inputs."classes-0_1_0".ref   = "master";
  inputs."classes-0_1_0".repo  = "classes";
  inputs."classes-0_1_0".type  = "github";
  inputs."classes-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-0_2_0".dir   = "0_2_0";
  inputs."oolib-0_2_0".owner = "nim-nix-pkgs";
  inputs."oolib-0_2_0".ref   = "master";
  inputs."oolib-0_2_0".repo  = "oolib";
  inputs."oolib-0_2_0".type  = "github";
  inputs."oolib-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-0_2_1".dir   = "0_2_1";
  inputs."oolib-0_2_1".owner = "nim-nix-pkgs";
  inputs."oolib-0_2_1".ref   = "master";
  inputs."oolib-0_2_1".repo  = "oolib";
  inputs."oolib-0_2_1".type  = "github";
  inputs."oolib-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-0_2_2".dir   = "0_2_2";
  inputs."oolib-0_2_2".owner = "nim-nix-pkgs";
  inputs."oolib-0_2_2".ref   = "master";
  inputs."oolib-0_2_2".repo  = "oolib";
  inputs."oolib-0_2_2".type  = "github";
  inputs."oolib-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-0_3_0".dir   = "0_3_0";
  inputs."oolib-0_3_0".owner = "nim-nix-pkgs";
  inputs."oolib-0_3_0".ref   = "master";
  inputs."oolib-0_3_0".repo  = "oolib";
  inputs."oolib-0_3_0".type  = "github";
  inputs."oolib-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oolib-0_4_0".dir   = "0_4_0";
  inputs."oolib-0_4_0".owner = "nim-nix-pkgs";
  inputs."oolib-0_4_0".ref   = "master";
  inputs."oolib-0_4_0".repo  = "oolib";
  inputs."oolib-0_4_0".type  = "github";
  inputs."oolib-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oolib-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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