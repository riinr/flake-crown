{
  description = ''Adds class support to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."classes-master".dir   = "master";
  inputs."classes-master".owner = "nim-nix-pkgs";
  inputs."classes-master".ref   = "master";
  inputs."classes-master".repo  = "classes";
  inputs."classes-master".type  = "github";
  inputs."classes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_0".dir   = "v0_2_0";
  inputs."classes-v0_2_0".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_0".ref   = "master";
  inputs."classes-v0_2_0".repo  = "classes";
  inputs."classes-v0_2_0".type  = "github";
  inputs."classes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_1".dir   = "v0_2_1";
  inputs."classes-v0_2_1".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_1".ref   = "master";
  inputs."classes-v0_2_1".repo  = "classes";
  inputs."classes-v0_2_1".type  = "github";
  inputs."classes-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_11".dir   = "v0_2_11";
  inputs."classes-v0_2_11".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_11".ref   = "master";
  inputs."classes-v0_2_11".repo  = "classes";
  inputs."classes-v0_2_11".type  = "github";
  inputs."classes-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_2".dir   = "v0_2_2";
  inputs."classes-v0_2_2".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_2".ref   = "master";
  inputs."classes-v0_2_2".repo  = "classes";
  inputs."classes-v0_2_2".type  = "github";
  inputs."classes-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_3".dir   = "v0_2_3";
  inputs."classes-v0_2_3".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_3".ref   = "master";
  inputs."classes-v0_2_3".repo  = "classes";
  inputs."classes-v0_2_3".type  = "github";
  inputs."classes-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_5".dir   = "v0_2_5";
  inputs."classes-v0_2_5".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_5".ref   = "master";
  inputs."classes-v0_2_5".repo  = "classes";
  inputs."classes-v0_2_5".type  = "github";
  inputs."classes-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_8".dir   = "v0_2_8";
  inputs."classes-v0_2_8".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_8".ref   = "master";
  inputs."classes-v0_2_8".repo  = "classes";
  inputs."classes-v0_2_8".type  = "github";
  inputs."classes-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classes-v0_2_9".dir   = "v0_2_9";
  inputs."classes-v0_2_9".owner = "nim-nix-pkgs";
  inputs."classes-v0_2_9".ref   = "master";
  inputs."classes-v0_2_9".repo  = "classes";
  inputs."classes-v0_2_9".type  = "github";
  inputs."classes-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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