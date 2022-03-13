{
  description = ''Dependency-free, cross-platform and small logging library for Nim, with a simple and comfortable API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."logit-main".dir   = "main";
  inputs."logit-main".owner = "nim-nix-pkgs";
  inputs."logit-main".ref   = "master";
  inputs."logit-main".repo  = "logit";
  inputs."logit-main".type  = "github";
  inputs."logit-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_0".dir   = "v0_1_0";
  inputs."logit-v0_1_0".owner = "nim-nix-pkgs";
  inputs."logit-v0_1_0".ref   = "master";
  inputs."logit-v0_1_0".repo  = "logit";
  inputs."logit-v0_1_0".type  = "github";
  inputs."logit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_1".dir   = "v0_1_1";
  inputs."logit-v0_1_1".owner = "nim-nix-pkgs";
  inputs."logit-v0_1_1".ref   = "master";
  inputs."logit-v0_1_1".repo  = "logit";
  inputs."logit-v0_1_1".type  = "github";
  inputs."logit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_2".dir   = "v0_1_2";
  inputs."logit-v0_1_2".owner = "nim-nix-pkgs";
  inputs."logit-v0_1_2".ref   = "master";
  inputs."logit-v0_1_2".repo  = "logit";
  inputs."logit-v0_1_2".type  = "github";
  inputs."logit-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_3".dir   = "v0_1_3";
  inputs."logit-v0_1_3".owner = "nim-nix-pkgs";
  inputs."logit-v0_1_3".ref   = "master";
  inputs."logit-v0_1_3".repo  = "logit";
  inputs."logit-v0_1_3".type  = "github";
  inputs."logit-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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