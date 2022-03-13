{
  description = ''html dsl'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niml-main".dir   = "main";
  inputs."niml-main".owner = "nim-nix-pkgs";
  inputs."niml-main".ref   = "master";
  inputs."niml-main".repo  = "niml";
  inputs."niml-main".type  = "github";
  inputs."niml-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_0".dir   = "0_1_0";
  inputs."niml-0_1_0".owner = "nim-nix-pkgs";
  inputs."niml-0_1_0".ref   = "master";
  inputs."niml-0_1_0".repo  = "niml";
  inputs."niml-0_1_0".type  = "github";
  inputs."niml-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_1".dir   = "0_1_1";
  inputs."niml-0_1_1".owner = "nim-nix-pkgs";
  inputs."niml-0_1_1".ref   = "master";
  inputs."niml-0_1_1".repo  = "niml";
  inputs."niml-0_1_1".type  = "github";
  inputs."niml-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_2".dir   = "0_1_2";
  inputs."niml-0_1_2".owner = "nim-nix-pkgs";
  inputs."niml-0_1_2".ref   = "master";
  inputs."niml-0_1_2".repo  = "niml";
  inputs."niml-0_1_2".type  = "github";
  inputs."niml-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_3".dir   = "0_1_3";
  inputs."niml-0_1_3".owner = "nim-nix-pkgs";
  inputs."niml-0_1_3".ref   = "master";
  inputs."niml-0_1_3".repo  = "niml";
  inputs."niml-0_1_3".type  = "github";
  inputs."niml-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_4".dir   = "0_1_4";
  inputs."niml-0_1_4".owner = "nim-nix-pkgs";
  inputs."niml-0_1_4".ref   = "master";
  inputs."niml-0_1_4".repo  = "niml";
  inputs."niml-0_1_4".type  = "github";
  inputs."niml-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_1_5".dir   = "0_1_5";
  inputs."niml-0_1_5".owner = "nim-nix-pkgs";
  inputs."niml-0_1_5".ref   = "master";
  inputs."niml-0_1_5".repo  = "niml";
  inputs."niml-0_1_5".type  = "github";
  inputs."niml-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_2_0".dir   = "0_2_0";
  inputs."niml-0_2_0".owner = "nim-nix-pkgs";
  inputs."niml-0_2_0".ref   = "master";
  inputs."niml-0_2_0".repo  = "niml";
  inputs."niml-0_2_0".type  = "github";
  inputs."niml-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_2_1".dir   = "0_2_1";
  inputs."niml-0_2_1".owner = "nim-nix-pkgs";
  inputs."niml-0_2_1".ref   = "master";
  inputs."niml-0_2_1".repo  = "niml";
  inputs."niml-0_2_1".type  = "github";
  inputs."niml-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_2_2".dir   = "0_2_2";
  inputs."niml-0_2_2".owner = "nim-nix-pkgs";
  inputs."niml-0_2_2".ref   = "master";
  inputs."niml-0_2_2".repo  = "niml";
  inputs."niml-0_2_2".type  = "github";
  inputs."niml-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niml-0_2_3".dir   = "0_2_3";
  inputs."niml-0_2_3".owner = "nim-nix-pkgs";
  inputs."niml-0_2_3".ref   = "master";
  inputs."niml-0_2_3".repo  = "niml";
  inputs."niml-0_2_3".type  = "github";
  inputs."niml-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niml-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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