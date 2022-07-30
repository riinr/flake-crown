{
  description = ''A nice way to manage your ImGui application's style'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imstyle-devel".dir   = "devel";
  inputs."imstyle-devel".owner = "nim-nix-pkgs";
  inputs."imstyle-devel".ref   = "master";
  inputs."imstyle-devel".repo  = "imstyle";
  inputs."imstyle-devel".type  = "github";
  inputs."imstyle-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-main".dir   = "main";
  inputs."imstyle-main".owner = "nim-nix-pkgs";
  inputs."imstyle-main".ref   = "master";
  inputs."imstyle-main".repo  = "imstyle";
  inputs."imstyle-main".type  = "github";
  inputs."imstyle-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_1_0".dir   = "0_1_0";
  inputs."imstyle-0_1_0".owner = "nim-nix-pkgs";
  inputs."imstyle-0_1_0".ref   = "master";
  inputs."imstyle-0_1_0".repo  = "imstyle";
  inputs."imstyle-0_1_0".type  = "github";
  inputs."imstyle-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_1_2".dir   = "0_1_2";
  inputs."imstyle-0_1_2".owner = "nim-nix-pkgs";
  inputs."imstyle-0_1_2".ref   = "master";
  inputs."imstyle-0_1_2".repo  = "imstyle";
  inputs."imstyle-0_1_2".type  = "github";
  inputs."imstyle-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_1_3".dir   = "0_1_3";
  inputs."imstyle-0_1_3".owner = "nim-nix-pkgs";
  inputs."imstyle-0_1_3".ref   = "master";
  inputs."imstyle-0_1_3".repo  = "imstyle";
  inputs."imstyle-0_1_3".type  = "github";
  inputs."imstyle-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_1_4".dir   = "0_1_4";
  inputs."imstyle-0_1_4".owner = "nim-nix-pkgs";
  inputs."imstyle-0_1_4".ref   = "master";
  inputs."imstyle-0_1_4".repo  = "imstyle";
  inputs."imstyle-0_1_4".type  = "github";
  inputs."imstyle-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_2_0".dir   = "0_2_0";
  inputs."imstyle-0_2_0".owner = "nim-nix-pkgs";
  inputs."imstyle-0_2_0".ref   = "master";
  inputs."imstyle-0_2_0".repo  = "imstyle";
  inputs."imstyle-0_2_0".type  = "github";
  inputs."imstyle-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_3_0".dir   = "0_3_0";
  inputs."imstyle-0_3_0".owner = "nim-nix-pkgs";
  inputs."imstyle-0_3_0".ref   = "master";
  inputs."imstyle-0_3_0".repo  = "imstyle";
  inputs."imstyle-0_3_0".type  = "github";
  inputs."imstyle-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_3_1".dir   = "0_3_1";
  inputs."imstyle-0_3_1".owner = "nim-nix-pkgs";
  inputs."imstyle-0_3_1".ref   = "master";
  inputs."imstyle-0_3_1".repo  = "imstyle";
  inputs."imstyle-0_3_1".type  = "github";
  inputs."imstyle-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imstyle-0_3_2".dir   = "0_3_2";
  inputs."imstyle-0_3_2".owner = "nim-nix-pkgs";
  inputs."imstyle-0_3_2".ref   = "master";
  inputs."imstyle-0_3_2".repo  = "imstyle";
  inputs."imstyle-0_3_2".type  = "github";
  inputs."imstyle-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imstyle-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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