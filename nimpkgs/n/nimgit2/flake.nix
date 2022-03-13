{
  description = ''libgit2 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgit2-master".dir   = "master";
  inputs."nimgit2-master".owner = "nim-nix-pkgs";
  inputs."nimgit2-master".ref   = "master";
  inputs."nimgit2-master".repo  = "nimgit2";
  inputs."nimgit2-master".type  = "github";
  inputs."nimgit2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_0".dir   = "v0_1_0";
  inputs."nimgit2-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_1_0".ref   = "master";
  inputs."nimgit2-v0_1_0".repo  = "nimgit2";
  inputs."nimgit2-v0_1_0".type  = "github";
  inputs."nimgit2-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_1".dir   = "v0_1_1";
  inputs."nimgit2-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_1_1".ref   = "master";
  inputs."nimgit2-v0_1_1".repo  = "nimgit2";
  inputs."nimgit2-v0_1_1".type  = "github";
  inputs."nimgit2-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_1_2".dir   = "v0_1_2";
  inputs."nimgit2-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_1_2".ref   = "master";
  inputs."nimgit2-v0_1_2".repo  = "nimgit2";
  inputs."nimgit2-v0_1_2".type  = "github";
  inputs."nimgit2-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_2_0".dir   = "v0_2_0";
  inputs."nimgit2-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_2_0".ref   = "master";
  inputs."nimgit2-v0_2_0".repo  = "nimgit2";
  inputs."nimgit2-v0_2_0".type  = "github";
  inputs."nimgit2-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_0".dir   = "v0_3_0";
  inputs."nimgit2-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_3_0".ref   = "master";
  inputs."nimgit2-v0_3_0".repo  = "nimgit2";
  inputs."nimgit2-v0_3_0".type  = "github";
  inputs."nimgit2-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_1".dir   = "v0_3_1";
  inputs."nimgit2-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_3_1".ref   = "master";
  inputs."nimgit2-v0_3_1".repo  = "nimgit2";
  inputs."nimgit2-v0_3_1".type  = "github";
  inputs."nimgit2-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_2".dir   = "v0_3_2";
  inputs."nimgit2-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_3_2".ref   = "master";
  inputs."nimgit2-v0_3_2".repo  = "nimgit2";
  inputs."nimgit2-v0_3_2".type  = "github";
  inputs."nimgit2-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgit2-v0_3_4".dir   = "v0_3_4";
  inputs."nimgit2-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimgit2-v0_3_4".ref   = "master";
  inputs."nimgit2-v0_3_4".repo  = "nimgit2";
  inputs."nimgit2-v0_3_4".type  = "github";
  inputs."nimgit2-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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