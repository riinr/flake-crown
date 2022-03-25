{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bytesequtils-main".dir   = "main";
  inputs."bytesequtils-main".owner = "nim-nix-pkgs";
  inputs."bytesequtils-main".ref   = "master";
  inputs."bytesequtils-main".repo  = "bytesequtils";
  inputs."bytesequtils-main".type  = "github";
  inputs."bytesequtils-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."byteutils-v1_0_0".dir   = "v1_0_0";
  inputs."byteutils-v1_0_0".owner = "nim-nix-pkgs";
  inputs."byteutils-v1_0_0".ref   = "master";
  inputs."byteutils-v1_0_0".repo  = "byteutils";
  inputs."byteutils-v1_0_0".type  = "github";
  inputs."byteutils-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."byteutils-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_0".dir   = "v1_1_0";
  inputs."bytesequtils-v1_1_0".owner = "nim-nix-pkgs";
  inputs."bytesequtils-v1_1_0".ref   = "master";
  inputs."bytesequtils-v1_1_0".repo  = "bytesequtils";
  inputs."bytesequtils-v1_1_0".type  = "github";
  inputs."bytesequtils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_1".dir   = "v1_1_1";
  inputs."bytesequtils-v1_1_1".owner = "nim-nix-pkgs";
  inputs."bytesequtils-v1_1_1".ref   = "master";
  inputs."bytesequtils-v1_1_1".repo  = "bytesequtils";
  inputs."bytesequtils-v1_1_1".type  = "github";
  inputs."bytesequtils-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_2".dir   = "v1_1_2";
  inputs."bytesequtils-v1_1_2".owner = "nim-nix-pkgs";
  inputs."bytesequtils-v1_1_2".ref   = "master";
  inputs."bytesequtils-v1_1_2".repo  = "bytesequtils";
  inputs."bytesequtils-v1_1_2".type  = "github";
  inputs."bytesequtils-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_3".dir   = "v1_1_3";
  inputs."bytesequtils-v1_1_3".owner = "nim-nix-pkgs";
  inputs."bytesequtils-v1_1_3".ref   = "master";
  inputs."bytesequtils-v1_1_3".repo  = "bytesequtils";
  inputs."bytesequtils-v1_1_3".type  = "github";
  inputs."bytesequtils-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_2_0".dir   = "v1_2_0";
  inputs."bytesequtils-v1_2_0".owner = "nim-nix-pkgs";
  inputs."bytesequtils-v1_2_0".ref   = "master";
  inputs."bytesequtils-v1_2_0".repo  = "bytesequtils";
  inputs."bytesequtils-v1_2_0".type  = "github";
  inputs."bytesequtils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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