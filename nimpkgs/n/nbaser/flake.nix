{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nbaser-archive/develop".dir   = "archive/develop";
  inputs."nbaser-archive/develop".owner = "nim-nix-pkgs";
  inputs."nbaser-archive/develop".ref   = "master";
  inputs."nbaser-archive/develop".repo  = "nbaser";
  inputs."nbaser-archive/develop".type  = "github";
  inputs."nbaser-archive/develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-archive/develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-develop".dir   = "develop";
  inputs."nbaser-develop".owner = "nim-nix-pkgs";
  inputs."nbaser-develop".ref   = "master";
  inputs."nbaser-develop".repo  = "nbaser";
  inputs."nbaser-develop".type  = "github";
  inputs."nbaser-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-master".dir   = "master";
  inputs."nbaser-master".owner = "nim-nix-pkgs";
  inputs."nbaser-master".ref   = "master";
  inputs."nbaser-master".repo  = "nbaser";
  inputs."nbaser-master".type  = "github";
  inputs."nbaser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-v1_0_0".dir   = "v1_0_0";
  inputs."nbaser-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nbaser-v1_0_0".ref   = "master";
  inputs."nbaser-v1_0_0".repo  = "nbaser";
  inputs."nbaser-v1_0_0".type  = "github";
  inputs."nbaser-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-v1_0_1".dir   = "v1_0_1";
  inputs."nbaser-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nbaser-v1_0_1".ref   = "master";
  inputs."nbaser-v1_0_1".repo  = "nbaser";
  inputs."nbaser-v1_0_1".type  = "github";
  inputs."nbaser-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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