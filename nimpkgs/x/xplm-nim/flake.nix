{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xplm-develop".dir   = "develop";
  inputs."xplm-develop".owner = "nim-nix-pkgs";
  inputs."xplm-develop".ref   = "master";
  inputs."xplm-develop".repo  = "xplm";
  inputs."xplm-develop".type  = "github";
  inputs."xplm-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-master".dir   = "master";
  inputs."xplm-master".owner = "nim-nix-pkgs";
  inputs."xplm-master".ref   = "master";
  inputs."xplm-master".repo  = "xplm";
  inputs."xplm-master".type  = "github";
  inputs."xplm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_1_0".dir   = "v0_1_0";
  inputs."xplm-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xplm-v0_1_0".ref   = "master";
  inputs."xplm-v0_1_0".repo  = "xplm";
  inputs."xplm-v0_1_0".type  = "github";
  inputs."xplm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_1_1".dir   = "v0_1_1";
  inputs."xplm-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xplm-v0_1_1".ref   = "master";
  inputs."xplm-v0_1_1".repo  = "xplm";
  inputs."xplm-v0_1_1".type  = "github";
  inputs."xplm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_0".dir   = "v0_2_0";
  inputs."xplm-v0_2_0".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_0".ref   = "master";
  inputs."xplm-v0_2_0".repo  = "xplm";
  inputs."xplm-v0_2_0".type  = "github";
  inputs."xplm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_1".dir   = "v0_2_1";
  inputs."xplm-v0_2_1".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_1".ref   = "master";
  inputs."xplm-v0_2_1".repo  = "xplm";
  inputs."xplm-v0_2_1".type  = "github";
  inputs."xplm-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_2".dir   = "v0_2_2";
  inputs."xplm-v0_2_2".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_2".ref   = "master";
  inputs."xplm-v0_2_2".repo  = "xplm";
  inputs."xplm-v0_2_2".type  = "github";
  inputs."xplm-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_3".dir   = "v0_2_3";
  inputs."xplm-v0_2_3".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_3".ref   = "master";
  inputs."xplm-v0_2_3".repo  = "xplm";
  inputs."xplm-v0_2_3".type  = "github";
  inputs."xplm-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_4".dir   = "v0_2_4";
  inputs."xplm-v0_2_4".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_4".ref   = "master";
  inputs."xplm-v0_2_4".repo  = "xplm";
  inputs."xplm-v0_2_4".type  = "github";
  inputs."xplm-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-v0_2_5".dir   = "v0_2_5";
  inputs."xplm-v0_2_5".owner = "nim-nix-pkgs";
  inputs."xplm-v0_2_5".ref   = "master";
  inputs."xplm-v0_2_5".repo  = "xplm";
  inputs."xplm-v0_2_5".type  = "github";
  inputs."xplm-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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