{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xplm-nim-develop".dir   = "develop";
  inputs."xplm-nim-develop".owner = "nim-nix-pkgs";
  inputs."xplm-nim-develop".ref   = "master";
  inputs."xplm-nim-develop".repo  = "xplm-nim";
  inputs."xplm-nim-develop".type  = "github";
  inputs."xplm-nim-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-master".dir   = "master";
  inputs."xplm-nim-master".owner = "nim-nix-pkgs";
  inputs."xplm-nim-master".ref   = "master";
  inputs."xplm-nim-master".repo  = "xplm-nim";
  inputs."xplm-nim-master".type  = "github";
  inputs."xplm-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_1_0".dir   = "v0_1_0";
  inputs."xplm-nim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_1_0".ref   = "master";
  inputs."xplm-nim-v0_1_0".repo  = "xplm-nim";
  inputs."xplm-nim-v0_1_0".type  = "github";
  inputs."xplm-nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_1_1".dir   = "v0_1_1";
  inputs."xplm-nim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_1_1".ref   = "master";
  inputs."xplm-nim-v0_1_1".repo  = "xplm-nim";
  inputs."xplm-nim-v0_1_1".type  = "github";
  inputs."xplm-nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_0".dir   = "v0_2_0";
  inputs."xplm-nim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_0".ref   = "master";
  inputs."xplm-nim-v0_2_0".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_0".type  = "github";
  inputs."xplm-nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_1".dir   = "v0_2_1";
  inputs."xplm-nim-v0_2_1".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_1".ref   = "master";
  inputs."xplm-nim-v0_2_1".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_1".type  = "github";
  inputs."xplm-nim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_2".dir   = "v0_2_2";
  inputs."xplm-nim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_2".ref   = "master";
  inputs."xplm-nim-v0_2_2".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_2".type  = "github";
  inputs."xplm-nim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_3".dir   = "v0_2_3";
  inputs."xplm-nim-v0_2_3".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_3".ref   = "master";
  inputs."xplm-nim-v0_2_3".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_3".type  = "github";
  inputs."xplm-nim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_4".dir   = "v0_2_4";
  inputs."xplm-nim-v0_2_4".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_4".ref   = "master";
  inputs."xplm-nim-v0_2_4".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_4".type  = "github";
  inputs."xplm-nim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_5".dir   = "v0_2_5";
  inputs."xplm-nim-v0_2_5".owner = "nim-nix-pkgs";
  inputs."xplm-nim-v0_2_5".ref   = "master";
  inputs."xplm-nim-v0_2_5".repo  = "xplm-nim";
  inputs."xplm-nim-v0_2_5".type  = "github";
  inputs."xplm-nim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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