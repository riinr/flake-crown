{
  description = ''Command line tools for Prologue.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."logue-master".dir   = "master";
  inputs."logue-master".owner = "nim-nix-pkgs";
  inputs."logue-master".ref   = "master";
  inputs."logue-master".repo  = "logue";
  inputs."logue-master".type  = "github";
  inputs."logue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_0".dir   = "v0_1_0";
  inputs."logue-v0_1_0".owner = "nim-nix-pkgs";
  inputs."logue-v0_1_0".ref   = "master";
  inputs."logue-v0_1_0".repo  = "logue";
  inputs."logue-v0_1_0".type  = "github";
  inputs."logue-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_2".dir   = "v0_1_2";
  inputs."logue-v0_1_2".owner = "nim-nix-pkgs";
  inputs."logue-v0_1_2".ref   = "master";
  inputs."logue-v0_1_2".repo  = "logue";
  inputs."logue-v0_1_2".type  = "github";
  inputs."logue-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_6".dir   = "v0_1_6";
  inputs."logue-v0_1_6".owner = "nim-nix-pkgs";
  inputs."logue-v0_1_6".ref   = "master";
  inputs."logue-v0_1_6".repo  = "logue";
  inputs."logue-v0_1_6".type  = "github";
  inputs."logue-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_8".dir   = "v0_1_8";
  inputs."logue-v0_1_8".owner = "nim-nix-pkgs";
  inputs."logue-v0_1_8".ref   = "master";
  inputs."logue-v0_1_8".repo  = "logue";
  inputs."logue-v0_1_8".type  = "github";
  inputs."logue-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_0".dir   = "v0_2_0";
  inputs."logue-v0_2_0".owner = "nim-nix-pkgs";
  inputs."logue-v0_2_0".ref   = "master";
  inputs."logue-v0_2_0".repo  = "logue";
  inputs."logue-v0_2_0".type  = "github";
  inputs."logue-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_2".dir   = "v0_2_2";
  inputs."logue-v0_2_2".owner = "nim-nix-pkgs";
  inputs."logue-v0_2_2".ref   = "master";
  inputs."logue-v0_2_2".repo  = "logue";
  inputs."logue-v0_2_2".type  = "github";
  inputs."logue-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_4".dir   = "v0_2_4";
  inputs."logue-v0_2_4".owner = "nim-nix-pkgs";
  inputs."logue-v0_2_4".ref   = "master";
  inputs."logue-v0_2_4".repo  = "logue";
  inputs."logue-v0_2_4".type  = "github";
  inputs."logue-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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