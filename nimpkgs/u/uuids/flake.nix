{
  description = ''UUID library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uuids-master".dir   = "master";
  inputs."uuids-master".owner = "nim-nix-pkgs";
  inputs."uuids-master".ref   = "master";
  inputs."uuids-master".repo  = "uuids";
  inputs."uuids-master".type  = "github";
  inputs."uuids-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_0".dir   = "v0_1_0";
  inputs."uuids-v0_1_0".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_0".ref   = "master";
  inputs."uuids-v0_1_0".repo  = "uuids";
  inputs."uuids-v0_1_0".type  = "github";
  inputs."uuids-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_1".dir   = "v0_1_1";
  inputs."uuids-v0_1_1".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_1".ref   = "master";
  inputs."uuids-v0_1_1".repo  = "uuids";
  inputs."uuids-v0_1_1".type  = "github";
  inputs."uuids-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_10".dir   = "v0_1_10";
  inputs."uuids-v0_1_10".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_10".ref   = "master";
  inputs."uuids-v0_1_10".repo  = "uuids";
  inputs."uuids-v0_1_10".type  = "github";
  inputs."uuids-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_11".dir   = "v0_1_11";
  inputs."uuids-v0_1_11".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_11".ref   = "master";
  inputs."uuids-v0_1_11".repo  = "uuids";
  inputs."uuids-v0_1_11".type  = "github";
  inputs."uuids-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_2".dir   = "v0_1_2";
  inputs."uuids-v0_1_2".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_2".ref   = "master";
  inputs."uuids-v0_1_2".repo  = "uuids";
  inputs."uuids-v0_1_2".type  = "github";
  inputs."uuids-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_3".dir   = "v0_1_3";
  inputs."uuids-v0_1_3".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_3".ref   = "master";
  inputs."uuids-v0_1_3".repo  = "uuids";
  inputs."uuids-v0_1_3".type  = "github";
  inputs."uuids-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_4".dir   = "v0_1_4";
  inputs."uuids-v0_1_4".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_4".ref   = "master";
  inputs."uuids-v0_1_4".repo  = "uuids";
  inputs."uuids-v0_1_4".type  = "github";
  inputs."uuids-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_5".dir   = "v0_1_5";
  inputs."uuids-v0_1_5".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_5".ref   = "master";
  inputs."uuids-v0_1_5".repo  = "uuids";
  inputs."uuids-v0_1_5".type  = "github";
  inputs."uuids-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_6".dir   = "v0_1_6";
  inputs."uuids-v0_1_6".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_6".ref   = "master";
  inputs."uuids-v0_1_6".repo  = "uuids";
  inputs."uuids-v0_1_6".type  = "github";
  inputs."uuids-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_7".dir   = "v0_1_7";
  inputs."uuids-v0_1_7".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_7".ref   = "master";
  inputs."uuids-v0_1_7".repo  = "uuids";
  inputs."uuids-v0_1_7".type  = "github";
  inputs."uuids-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_8".dir   = "v0_1_8";
  inputs."uuids-v0_1_8".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_8".ref   = "master";
  inputs."uuids-v0_1_8".repo  = "uuids";
  inputs."uuids-v0_1_8".type  = "github";
  inputs."uuids-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uuids-v0_1_9".dir   = "v0_1_9";
  inputs."uuids-v0_1_9".owner = "nim-nix-pkgs";
  inputs."uuids-v0_1_9".ref   = "master";
  inputs."uuids-v0_1_9".repo  = "uuids";
  inputs."uuids-v0_1_9".type  = "github";
  inputs."uuids-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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