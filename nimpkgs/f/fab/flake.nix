{
  description = ''Print fabulously in your terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fab-master".dir   = "master";
  inputs."fab-master".owner = "nim-nix-pkgs";
  inputs."fab-master".ref   = "master";
  inputs."fab-master".repo  = "fab";
  inputs."fab-master".type  = "github";
  inputs."fab-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_1_0".dir   = "v0_1_0";
  inputs."fab-v0_1_0".owner = "nim-nix-pkgs";
  inputs."fab-v0_1_0".ref   = "master";
  inputs."fab-v0_1_0".repo  = "fab";
  inputs."fab-v0_1_0".type  = "github";
  inputs."fab-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_2_0".dir   = "v0_2_0";
  inputs."fab-v0_2_0".owner = "nim-nix-pkgs";
  inputs."fab-v0_2_0".ref   = "master";
  inputs."fab-v0_2_0".repo  = "fab";
  inputs."fab-v0_2_0".type  = "github";
  inputs."fab-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_3_0".dir   = "v0_3_0";
  inputs."fab-v0_3_0".owner = "nim-nix-pkgs";
  inputs."fab-v0_3_0".ref   = "master";
  inputs."fab-v0_3_0".repo  = "fab";
  inputs."fab-v0_3_0".type  = "github";
  inputs."fab-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_3_1".dir   = "v0_3_1";
  inputs."fab-v0_3_1".owner = "nim-nix-pkgs";
  inputs."fab-v0_3_1".ref   = "master";
  inputs."fab-v0_3_1".repo  = "fab";
  inputs."fab-v0_3_1".type  = "github";
  inputs."fab-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_0".dir   = "v0_4_0";
  inputs."fab-v0_4_0".owner = "nim-nix-pkgs";
  inputs."fab-v0_4_0".ref   = "master";
  inputs."fab-v0_4_0".repo  = "fab";
  inputs."fab-v0_4_0".type  = "github";
  inputs."fab-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_1".dir   = "v0_4_1";
  inputs."fab-v0_4_1".owner = "nim-nix-pkgs";
  inputs."fab-v0_4_1".ref   = "master";
  inputs."fab-v0_4_1".repo  = "fab";
  inputs."fab-v0_4_1".type  = "github";
  inputs."fab-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_2".dir   = "v0_4_2";
  inputs."fab-v0_4_2".owner = "nim-nix-pkgs";
  inputs."fab-v0_4_2".ref   = "master";
  inputs."fab-v0_4_2".repo  = "fab";
  inputs."fab-v0_4_2".type  = "github";
  inputs."fab-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_3".dir   = "v0_4_3";
  inputs."fab-v0_4_3".owner = "nim-nix-pkgs";
  inputs."fab-v0_4_3".ref   = "master";
  inputs."fab-v0_4_3".repo  = "fab";
  inputs."fab-v0_4_3".type  = "github";
  inputs."fab-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_4".dir   = "v0_4_4";
  inputs."fab-v0_4_4".owner = "nim-nix-pkgs";
  inputs."fab-v0_4_4".ref   = "master";
  inputs."fab-v0_4_4".repo  = "fab";
  inputs."fab-v0_4_4".type  = "github";
  inputs."fab-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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