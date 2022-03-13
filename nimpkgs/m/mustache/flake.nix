{
  description = ''Mustache in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mustache-master".dir   = "master";
  inputs."mustache-master".owner = "nim-nix-pkgs";
  inputs."mustache-master".ref   = "master";
  inputs."mustache-master".repo  = "mustache";
  inputs."mustache-master".type  = "github";
  inputs."mustache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_1_0".dir   = "v0_1_0";
  inputs."mustache-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mustache-v0_1_0".ref   = "master";
  inputs."mustache-v0_1_0".repo  = "mustache";
  inputs."mustache-v0_1_0".type  = "github";
  inputs."mustache-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_2_0".dir   = "v0_2_0";
  inputs."mustache-v0_2_0".owner = "nim-nix-pkgs";
  inputs."mustache-v0_2_0".ref   = "master";
  inputs."mustache-v0_2_0".repo  = "mustache";
  inputs."mustache-v0_2_0".type  = "github";
  inputs."mustache-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_2_1".dir   = "v0_2_1";
  inputs."mustache-v0_2_1".owner = "nim-nix-pkgs";
  inputs."mustache-v0_2_1".ref   = "master";
  inputs."mustache-v0_2_1".repo  = "mustache";
  inputs."mustache-v0_2_1".type  = "github";
  inputs."mustache-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_2_2".dir   = "v0_2_2";
  inputs."mustache-v0_2_2".owner = "nim-nix-pkgs";
  inputs."mustache-v0_2_2".ref   = "master";
  inputs."mustache-v0_2_2".repo  = "mustache";
  inputs."mustache-v0_2_2".type  = "github";
  inputs."mustache-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_3_0".dir   = "v0_3_0";
  inputs."mustache-v0_3_0".owner = "nim-nix-pkgs";
  inputs."mustache-v0_3_0".ref   = "master";
  inputs."mustache-v0_3_0".repo  = "mustache";
  inputs."mustache-v0_3_0".type  = "github";
  inputs."mustache-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_3_1".dir   = "v0_3_1";
  inputs."mustache-v0_3_1".owner = "nim-nix-pkgs";
  inputs."mustache-v0_3_1".ref   = "master";
  inputs."mustache-v0_3_1".repo  = "mustache";
  inputs."mustache-v0_3_1".type  = "github";
  inputs."mustache-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_3_2".dir   = "v0_3_2";
  inputs."mustache-v0_3_2".owner = "nim-nix-pkgs";
  inputs."mustache-v0_3_2".ref   = "master";
  inputs."mustache-v0_3_2".repo  = "mustache";
  inputs."mustache-v0_3_2".type  = "github";
  inputs."mustache-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_4_0".dir   = "v0_4_0";
  inputs."mustache-v0_4_0".owner = "nim-nix-pkgs";
  inputs."mustache-v0_4_0".ref   = "master";
  inputs."mustache-v0_4_0".repo  = "mustache";
  inputs."mustache-v0_4_0".type  = "github";
  inputs."mustache-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_4_1".dir   = "v0_4_1";
  inputs."mustache-v0_4_1".owner = "nim-nix-pkgs";
  inputs."mustache-v0_4_1".ref   = "master";
  inputs."mustache-v0_4_1".repo  = "mustache";
  inputs."mustache-v0_4_1".type  = "github";
  inputs."mustache-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_4_2".dir   = "v0_4_2";
  inputs."mustache-v0_4_2".owner = "nim-nix-pkgs";
  inputs."mustache-v0_4_2".ref   = "master";
  inputs."mustache-v0_4_2".repo  = "mustache";
  inputs."mustache-v0_4_2".type  = "github";
  inputs."mustache-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache-v0_4_3".dir   = "v0_4_3";
  inputs."mustache-v0_4_3".owner = "nim-nix-pkgs";
  inputs."mustache-v0_4_3".ref   = "master";
  inputs."mustache-v0_4_3".repo  = "mustache";
  inputs."mustache-v0_4_3".type  = "github";
  inputs."mustache-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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