{
  description = ''Utility macros for easier handling of Result'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."resultsutils-main".dir   = "main";
  inputs."resultsutils-main".owner = "nim-nix-pkgs";
  inputs."resultsutils-main".ref   = "master";
  inputs."resultsutils-main".repo  = "resultsutils";
  inputs."resultsutils-main".type  = "github";
  inputs."resultsutils-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_1".dir   = "v0_1_1";
  inputs."resultsutils-v0_1_1".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_1".ref   = "master";
  inputs."resultsutils-v0_1_1".repo  = "resultsutils";
  inputs."resultsutils-v0_1_1".type  = "github";
  inputs."resultsutils-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_2".dir   = "v0_1_2";
  inputs."resultsutils-v0_1_2".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_2".ref   = "master";
  inputs."resultsutils-v0_1_2".repo  = "resultsutils";
  inputs."resultsutils-v0_1_2".type  = "github";
  inputs."resultsutils-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_3".dir   = "v0_1_3";
  inputs."resultsutils-v0_1_3".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_3".ref   = "master";
  inputs."resultsutils-v0_1_3".repo  = "resultsutils";
  inputs."resultsutils-v0_1_3".type  = "github";
  inputs."resultsutils-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_4".dir   = "v0_1_4";
  inputs."resultsutils-v0_1_4".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_4".ref   = "master";
  inputs."resultsutils-v0_1_4".repo  = "resultsutils";
  inputs."resultsutils-v0_1_4".type  = "github";
  inputs."resultsutils-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_5".dir   = "v0_1_5";
  inputs."resultsutils-v0_1_5".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_5".ref   = "master";
  inputs."resultsutils-v0_1_5".repo  = "resultsutils";
  inputs."resultsutils-v0_1_5".type  = "github";
  inputs."resultsutils-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resultsutils-v0_1_6".dir   = "v0_1_6";
  inputs."resultsutils-v0_1_6".owner = "nim-nix-pkgs";
  inputs."resultsutils-v0_1_6".ref   = "master";
  inputs."resultsutils-v0_1_6".repo  = "resultsutils";
  inputs."resultsutils-v0_1_6".type  = "github";
  inputs."resultsutils-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resultsutils-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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