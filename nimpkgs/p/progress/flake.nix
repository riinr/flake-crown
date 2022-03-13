{
  description = ''A simple progress bar for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."progress-master".dir   = "master";
  inputs."progress-master".owner = "nim-nix-pkgs";
  inputs."progress-master".ref   = "master";
  inputs."progress-master".repo  = "progress";
  inputs."progress-master".type  = "github";
  inputs."progress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_0".dir   = "v1_0_0";
  inputs."progress-v1_0_0".owner = "nim-nix-pkgs";
  inputs."progress-v1_0_0".ref   = "master";
  inputs."progress-v1_0_0".repo  = "progress";
  inputs."progress-v1_0_0".type  = "github";
  inputs."progress-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_1".dir   = "v1_0_1";
  inputs."progress-v1_0_1".owner = "nim-nix-pkgs";
  inputs."progress-v1_0_1".ref   = "master";
  inputs."progress-v1_0_1".repo  = "progress";
  inputs."progress-v1_0_1".type  = "github";
  inputs."progress-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_0_2".dir   = "v1_0_2";
  inputs."progress-v1_0_2".owner = "nim-nix-pkgs";
  inputs."progress-v1_0_2".ref   = "master";
  inputs."progress-v1_0_2".repo  = "progress";
  inputs."progress-v1_0_2".type  = "github";
  inputs."progress-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_0".dir   = "v1_1_0";
  inputs."progress-v1_1_0".owner = "nim-nix-pkgs";
  inputs."progress-v1_1_0".ref   = "master";
  inputs."progress-v1_1_0".repo  = "progress";
  inputs."progress-v1_1_0".type  = "github";
  inputs."progress-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_1".dir   = "v1_1_1";
  inputs."progress-v1_1_1".owner = "nim-nix-pkgs";
  inputs."progress-v1_1_1".ref   = "master";
  inputs."progress-v1_1_1".repo  = "progress";
  inputs."progress-v1_1_1".type  = "github";
  inputs."progress-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."progress-v1_1_3".dir   = "v1_1_3";
  inputs."progress-v1_1_3".owner = "nim-nix-pkgs";
  inputs."progress-v1_1_3".ref   = "master";
  inputs."progress-v1_1_3".repo  = "progress";
  inputs."progress-v1_1_3".type  = "github";
  inputs."progress-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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