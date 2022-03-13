{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qt5_qtsql-master".dir   = "master";
  inputs."qt5_qtsql-master".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-master".ref   = "master";
  inputs."qt5_qtsql-master".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-master".type  = "github";
  inputs."qt5_qtsql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-0_7_0".dir   = "0_7_0";
  inputs."qt5_qtsql-0_7_0".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-0_7_0".ref   = "master";
  inputs."qt5_qtsql-0_7_0".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-0_7_0".type  = "github";
  inputs."qt5_qtsql-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_0".dir   = "1_0_0";
  inputs."qt5_qtsql-1_0_0".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_0_0".ref   = "master";
  inputs."qt5_qtsql-1_0_0".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_0_0".type  = "github";
  inputs."qt5_qtsql-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_1".dir   = "1_0_1";
  inputs."qt5_qtsql-1_0_1".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_0_1".ref   = "master";
  inputs."qt5_qtsql-1_0_1".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_0_1".type  = "github";
  inputs."qt5_qtsql-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_2".dir   = "1_0_2";
  inputs."qt5_qtsql-1_0_2".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_0_2".ref   = "master";
  inputs."qt5_qtsql-1_0_2".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_0_2".type  = "github";
  inputs."qt5_qtsql-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_3".dir   = "1_0_3";
  inputs."qt5_qtsql-1_0_3".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_0_3".ref   = "master";
  inputs."qt5_qtsql-1_0_3".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_0_3".type  = "github";
  inputs."qt5_qtsql-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_1_0".dir   = "1_1_0";
  inputs."qt5_qtsql-1_1_0".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_1_0".ref   = "master";
  inputs."qt5_qtsql-1_1_0".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_1_0".type  = "github";
  inputs."qt5_qtsql-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_1_1".dir   = "1_1_1";
  inputs."qt5_qtsql-1_1_1".owner = "nim-nix-pkgs";
  inputs."qt5_qtsql-1_1_1".ref   = "master";
  inputs."qt5_qtsql-1_1_1".repo  = "qt5_qtsql";
  inputs."qt5_qtsql-1_1_1".type  = "github";
  inputs."qt5_qtsql-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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