{
  description = ''make-like for Nim. Describe your builds as tasks!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nake-master".dir   = "master";
  inputs."nake-master".owner = "nim-nix-pkgs";
  inputs."nake-master".ref   = "master";
  inputs."nake-master".repo  = "nake";
  inputs."nake-master".type  = "github";
  inputs."nake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9".dir   = "1_9";
  inputs."nake-1_9".owner = "nim-nix-pkgs";
  inputs."nake-1_9".ref   = "master";
  inputs."nake-1_9".repo  = "nake";
  inputs."nake-1_9".type  = "github";
  inputs."nake-1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_1".dir   = "1_9_1";
  inputs."nake-1_9_1".owner = "nim-nix-pkgs";
  inputs."nake-1_9_1".ref   = "master";
  inputs."nake-1_9_1".repo  = "nake";
  inputs."nake-1_9_1".type  = "github";
  inputs."nake-1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_2".dir   = "1_9_2";
  inputs."nake-1_9_2".owner = "nim-nix-pkgs";
  inputs."nake-1_9_2".ref   = "master";
  inputs."nake-1_9_2".repo  = "nake";
  inputs."nake-1_9_2".type  = "github";
  inputs."nake-1_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_3".dir   = "1_9_3";
  inputs."nake-1_9_3".owner = "nim-nix-pkgs";
  inputs."nake-1_9_3".ref   = "master";
  inputs."nake-1_9_3".repo  = "nake";
  inputs."nake-1_9_3".type  = "github";
  inputs."nake-1_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_4".dir   = "1_9_4";
  inputs."nake-1_9_4".owner = "nim-nix-pkgs";
  inputs."nake-1_9_4".ref   = "master";
  inputs."nake-1_9_4".repo  = "nake";
  inputs."nake-1_9_4".type  = "github";
  inputs."nake-1_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_0".dir   = "v1_0";
  inputs."nake-v1_0".owner = "nim-nix-pkgs";
  inputs."nake-v1_0".ref   = "master";
  inputs."nake-v1_0".repo  = "nake";
  inputs."nake-v1_0".type  = "github";
  inputs."nake-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_1".dir   = "v1_1";
  inputs."nake-v1_1".owner = "nim-nix-pkgs";
  inputs."nake-v1_1".ref   = "master";
  inputs."nake-v1_1".repo  = "nake";
  inputs."nake-v1_1".type  = "github";
  inputs."nake-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_2".dir   = "v1_2";
  inputs."nake-v1_2".owner = "nim-nix-pkgs";
  inputs."nake-v1_2".ref   = "master";
  inputs."nake-v1_2".repo  = "nake";
  inputs."nake-v1_2".type  = "github";
  inputs."nake-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_4".dir   = "v1_4";
  inputs."nake-v1_4".owner = "nim-nix-pkgs";
  inputs."nake-v1_4".ref   = "master";
  inputs."nake-v1_4".repo  = "nake";
  inputs."nake-v1_4".type  = "github";
  inputs."nake-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_6".dir   = "v1_6";
  inputs."nake-v1_6".owner = "nim-nix-pkgs";
  inputs."nake-v1_6".ref   = "master";
  inputs."nake-v1_6".repo  = "nake";
  inputs."nake-v1_6".type  = "github";
  inputs."nake-v1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_8".dir   = "v1_8";
  inputs."nake-v1_8".owner = "nim-nix-pkgs";
  inputs."nake-v1_8".ref   = "master";
  inputs."nake-v1_8".repo  = "nake";
  inputs."nake-v1_8".type  = "github";
  inputs."nake-v1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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