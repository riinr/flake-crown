{
  description = ''A library for colorizing paths according to LS_COLORS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lscolors-master".dir   = "master";
  inputs."lscolors-master".owner = "nim-nix-pkgs";
  inputs."lscolors-master".ref   = "master";
  inputs."lscolors-master".repo  = "lscolors";
  inputs."lscolors-master".type  = "github";
  inputs."lscolors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_1_0".dir   = "v0_1_0";
  inputs."lscolors-v0_1_0".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_1_0".ref   = "master";
  inputs."lscolors-v0_1_0".repo  = "lscolors";
  inputs."lscolors-v0_1_0".type  = "github";
  inputs."lscolors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_0".dir   = "v0_2_0";
  inputs."lscolors-v0_2_0".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_2_0".ref   = "master";
  inputs."lscolors-v0_2_0".repo  = "lscolors";
  inputs."lscolors-v0_2_0".type  = "github";
  inputs."lscolors-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_1".dir   = "v0_2_1";
  inputs."lscolors-v0_2_1".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_2_1".ref   = "master";
  inputs."lscolors-v0_2_1".repo  = "lscolors";
  inputs."lscolors-v0_2_1".type  = "github";
  inputs."lscolors-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_2".dir   = "v0_2_2";
  inputs."lscolors-v0_2_2".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_2_2".ref   = "master";
  inputs."lscolors-v0_2_2".repo  = "lscolors";
  inputs."lscolors-v0_2_2".type  = "github";
  inputs."lscolors-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_0".dir   = "v0_3_0";
  inputs."lscolors-v0_3_0".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_3_0".ref   = "master";
  inputs."lscolors-v0_3_0".repo  = "lscolors";
  inputs."lscolors-v0_3_0".type  = "github";
  inputs."lscolors-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_1".dir   = "v0_3_1";
  inputs."lscolors-v0_3_1".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_3_1".ref   = "master";
  inputs."lscolors-v0_3_1".repo  = "lscolors";
  inputs."lscolors-v0_3_1".type  = "github";
  inputs."lscolors-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_2".dir   = "v0_3_2";
  inputs."lscolors-v0_3_2".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_3_2".ref   = "master";
  inputs."lscolors-v0_3_2".repo  = "lscolors";
  inputs."lscolors-v0_3_2".type  = "github";
  inputs."lscolors-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_3".dir   = "v0_3_3";
  inputs."lscolors-v0_3_3".owner = "nim-nix-pkgs";
  inputs."lscolors-v0_3_3".ref   = "master";
  inputs."lscolors-v0_3_3".repo  = "lscolors";
  inputs."lscolors-v0_3_3".type  = "github";
  inputs."lscolors-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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