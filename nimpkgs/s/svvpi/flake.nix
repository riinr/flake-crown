{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."svvpi-main".dir   = "main";
  inputs."svvpi-main".owner = "nim-nix-pkgs";
  inputs."svvpi-main".ref   = "master";
  inputs."svvpi-main".repo  = "svvpi";
  inputs."svvpi-main".type  = "github";
  inputs."svvpi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_1".dir   = "v0_0_1";
  inputs."svvpi-v0_0_1".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_1".ref   = "master";
  inputs."svvpi-v0_0_1".repo  = "svvpi";
  inputs."svvpi-v0_0_1".type  = "github";
  inputs."svvpi-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_2".dir   = "v0_0_2";
  inputs."svvpi-v0_0_2".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_2".ref   = "master";
  inputs."svvpi-v0_0_2".repo  = "svvpi";
  inputs."svvpi-v0_0_2".type  = "github";
  inputs."svvpi-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_3".dir   = "v0_0_3";
  inputs."svvpi-v0_0_3".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_3".ref   = "master";
  inputs."svvpi-v0_0_3".repo  = "svvpi";
  inputs."svvpi-v0_0_3".type  = "github";
  inputs."svvpi-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_4".dir   = "v0_0_4";
  inputs."svvpi-v0_0_4".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_4".ref   = "master";
  inputs."svvpi-v0_0_4".repo  = "svvpi";
  inputs."svvpi-v0_0_4".type  = "github";
  inputs."svvpi-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_5".dir   = "v0_0_5";
  inputs."svvpi-v0_0_5".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_5".ref   = "master";
  inputs."svvpi-v0_0_5".repo  = "svvpi";
  inputs."svvpi-v0_0_5".type  = "github";
  inputs."svvpi-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_6".dir   = "v0_0_6";
  inputs."svvpi-v0_0_6".owner = "nim-nix-pkgs";
  inputs."svvpi-v0_0_6".ref   = "master";
  inputs."svvpi-v0_0_6".repo  = "svvpi";
  inputs."svvpi-v0_0_6".type  = "github";
  inputs."svvpi-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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