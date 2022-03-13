{
  description = ''Binary parser/encoder DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binarylang-main".dir   = "main";
  inputs."binarylang-main".owner = "nim-nix-pkgs";
  inputs."binarylang-main".ref   = "master";
  inputs."binarylang-main".repo  = "binarylang";
  inputs."binarylang-main".type  = "github";
  inputs."binarylang-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_2_0".dir   = "v0_2_0";
  inputs."binarylang-v0_2_0".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_2_0".ref   = "master";
  inputs."binarylang-v0_2_0".repo  = "binarylang";
  inputs."binarylang-v0_2_0".type  = "github";
  inputs."binarylang-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_0".dir   = "v0_3_0";
  inputs."binarylang-v0_3_0".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_3_0".ref   = "master";
  inputs."binarylang-v0_3_0".repo  = "binarylang";
  inputs."binarylang-v0_3_0".type  = "github";
  inputs."binarylang-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_1".dir   = "v0_3_1";
  inputs."binarylang-v0_3_1".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_3_1".ref   = "master";
  inputs."binarylang-v0_3_1".repo  = "binarylang";
  inputs."binarylang-v0_3_1".type  = "github";
  inputs."binarylang-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_2".dir   = "v0_3_2";
  inputs."binarylang-v0_3_2".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_3_2".ref   = "master";
  inputs."binarylang-v0_3_2".repo  = "binarylang";
  inputs."binarylang-v0_3_2".type  = "github";
  inputs."binarylang-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_5_0".dir   = "v0_5_0";
  inputs."binarylang-v0_5_0".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_5_0".ref   = "master";
  inputs."binarylang-v0_5_0".repo  = "binarylang";
  inputs."binarylang-v0_5_0".type  = "github";
  inputs."binarylang-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_5_1".dir   = "v0_5_1";
  inputs."binarylang-v0_5_1".owner = "nim-nix-pkgs";
  inputs."binarylang-v0_5_1".ref   = "master";
  inputs."binarylang-v0_5_1".repo  = "binarylang";
  inputs."binarylang-v0_5_1".type  = "github";
  inputs."binarylang-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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