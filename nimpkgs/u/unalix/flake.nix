{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unalix-devel".dir   = "devel";
  inputs."unalix-devel".owner = "nim-nix-pkgs";
  inputs."unalix-devel".ref   = "master";
  inputs."unalix-devel".repo  = "unalix";
  inputs."unalix-devel".type  = "github";
  inputs."unalix-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-master".dir   = "master";
  inputs."unalix-master".owner = "nim-nix-pkgs";
  inputs."unalix-master".ref   = "master";
  inputs."unalix-master".repo  = "unalix";
  inputs."unalix-master".type  = "github";
  inputs."unalix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_1".dir   = "v0_1";
  inputs."unalix-v0_1".owner = "nim-nix-pkgs";
  inputs."unalix-v0_1".ref   = "master";
  inputs."unalix-v0_1".repo  = "unalix";
  inputs."unalix-v0_1".type  = "github";
  inputs."unalix-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_2".dir   = "v0_2";
  inputs."unalix-v0_2".owner = "nim-nix-pkgs";
  inputs."unalix-v0_2".ref   = "master";
  inputs."unalix-v0_2".repo  = "unalix";
  inputs."unalix-v0_2".type  = "github";
  inputs."unalix-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_3".dir   = "v0_3";
  inputs."unalix-v0_3".owner = "nim-nix-pkgs";
  inputs."unalix-v0_3".ref   = "master";
  inputs."unalix-v0_3".repo  = "unalix";
  inputs."unalix-v0_3".type  = "github";
  inputs."unalix-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_4".dir   = "v0_4";
  inputs."unalix-v0_4".owner = "nim-nix-pkgs";
  inputs."unalix-v0_4".ref   = "master";
  inputs."unalix-v0_4".repo  = "unalix";
  inputs."unalix-v0_4".type  = "github";
  inputs."unalix-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_5".dir   = "v0_5";
  inputs."unalix-v0_5".owner = "nim-nix-pkgs";
  inputs."unalix-v0_5".ref   = "master";
  inputs."unalix-v0_5".repo  = "unalix";
  inputs."unalix-v0_5".type  = "github";
  inputs."unalix-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_5_1".dir   = "v0_5_1";
  inputs."unalix-v0_5_1".owner = "nim-nix-pkgs";
  inputs."unalix-v0_5_1".ref   = "master";
  inputs."unalix-v0_5_1".repo  = "unalix";
  inputs."unalix-v0_5_1".type  = "github";
  inputs."unalix-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_6".dir   = "v0_6";
  inputs."unalix-v0_6".owner = "nim-nix-pkgs";
  inputs."unalix-v0_6".ref   = "master";
  inputs."unalix-v0_6".repo  = "unalix";
  inputs."unalix-v0_6".type  = "github";
  inputs."unalix-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_6_1".dir   = "v0_6_1";
  inputs."unalix-v0_6_1".owner = "nim-nix-pkgs";
  inputs."unalix-v0_6_1".ref   = "master";
  inputs."unalix-v0_6_1".repo  = "unalix";
  inputs."unalix-v0_6_1".type  = "github";
  inputs."unalix-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_7".dir   = "v0_7";
  inputs."unalix-v0_7".owner = "nim-nix-pkgs";
  inputs."unalix-v0_7".ref   = "master";
  inputs."unalix-v0_7".repo  = "unalix";
  inputs."unalix-v0_7".type  = "github";
  inputs."unalix-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unalix-v0_8".dir   = "v0_8";
  inputs."unalix-v0_8".owner = "nim-nix-pkgs";
  inputs."unalix-v0_8".ref   = "master";
  inputs."unalix-v0_8".repo  = "unalix";
  inputs."unalix-v0_8".type  = "github";
  inputs."unalix-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unalix-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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