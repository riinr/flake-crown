{
  description = ''minimal, performant mass file renamer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rn-master".dir   = "master";
  inputs."rn-master".owner = "nim-nix-pkgs";
  inputs."rn-master".ref   = "master";
  inputs."rn-master".repo  = "rn";
  inputs."rn-master".type  = "github";
  inputs."rn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_1".dir   = "v0_0_1";
  inputs."rn-v0_0_1".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_1".ref   = "master";
  inputs."rn-v0_0_1".repo  = "rn";
  inputs."rn-v0_0_1".type  = "github";
  inputs."rn-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_2".dir   = "v0_0_2";
  inputs."rn-v0_0_2".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_2".ref   = "master";
  inputs."rn-v0_0_2".repo  = "rn";
  inputs."rn-v0_0_2".type  = "github";
  inputs."rn-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_3".dir   = "v0_0_3";
  inputs."rn-v0_0_3".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_3".ref   = "master";
  inputs."rn-v0_0_3".repo  = "rn";
  inputs."rn-v0_0_3".type  = "github";
  inputs."rn-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_4".dir   = "v0_0_4";
  inputs."rn-v0_0_4".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_4".ref   = "master";
  inputs."rn-v0_0_4".repo  = "rn";
  inputs."rn-v0_0_4".type  = "github";
  inputs."rn-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_5".dir   = "v0_0_5";
  inputs."rn-v0_0_5".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_5".ref   = "master";
  inputs."rn-v0_0_5".repo  = "rn";
  inputs."rn-v0_0_5".type  = "github";
  inputs."rn-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_6".dir   = "v0_0_6";
  inputs."rn-v0_0_6".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_6".ref   = "master";
  inputs."rn-v0_0_6".repo  = "rn";
  inputs."rn-v0_0_6".type  = "github";
  inputs."rn-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_7".dir   = "v0_0_7";
  inputs."rn-v0_0_7".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_7".ref   = "master";
  inputs."rn-v0_0_7".repo  = "rn";
  inputs."rn-v0_0_7".type  = "github";
  inputs."rn-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_8".dir   = "v0_0_8";
  inputs."rn-v0_0_8".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_8".ref   = "master";
  inputs."rn-v0_0_8".repo  = "rn";
  inputs."rn-v0_0_8".type  = "github";
  inputs."rn-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_9".dir   = "v0_0_9";
  inputs."rn-v0_0_9".owner = "nim-nix-pkgs";
  inputs."rn-v0_0_9".ref   = "master";
  inputs."rn-v0_0_9".repo  = "rn";
  inputs."rn-v0_0_9".type  = "github";
  inputs."rn-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_0".dir   = "v0_1_0";
  inputs."rn-v0_1_0".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_0".ref   = "master";
  inputs."rn-v0_1_0".repo  = "rn";
  inputs."rn-v0_1_0".type  = "github";
  inputs."rn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_1".dir   = "v0_1_1";
  inputs."rn-v0_1_1".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_1".ref   = "master";
  inputs."rn-v0_1_1".repo  = "rn";
  inputs."rn-v0_1_1".type  = "github";
  inputs."rn-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_2".dir   = "v0_1_2";
  inputs."rn-v0_1_2".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_2".ref   = "master";
  inputs."rn-v0_1_2".repo  = "rn";
  inputs."rn-v0_1_2".type  = "github";
  inputs."rn-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_3".dir   = "v0_1_3";
  inputs."rn-v0_1_3".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_3".ref   = "master";
  inputs."rn-v0_1_3".repo  = "rn";
  inputs."rn-v0_1_3".type  = "github";
  inputs."rn-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_4".dir   = "v0_1_4";
  inputs."rn-v0_1_4".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_4".ref   = "master";
  inputs."rn-v0_1_4".repo  = "rn";
  inputs."rn-v0_1_4".type  = "github";
  inputs."rn-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_5".dir   = "v0_1_5";
  inputs."rn-v0_1_5".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_5".ref   = "master";
  inputs."rn-v0_1_5".repo  = "rn";
  inputs."rn-v0_1_5".type  = "github";
  inputs."rn-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_6".dir   = "v0_1_6";
  inputs."rn-v0_1_6".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_6".ref   = "master";
  inputs."rn-v0_1_6".repo  = "rn";
  inputs."rn-v0_1_6".type  = "github";
  inputs."rn-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_7".dir   = "v0_1_7";
  inputs."rn-v0_1_7".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_7".ref   = "master";
  inputs."rn-v0_1_7".repo  = "rn";
  inputs."rn-v0_1_7".type  = "github";
  inputs."rn-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_8".dir   = "v0_1_8";
  inputs."rn-v0_1_8".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_8".ref   = "master";
  inputs."rn-v0_1_8".repo  = "rn";
  inputs."rn-v0_1_8".type  = "github";
  inputs."rn-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_9".dir   = "v0_1_9";
  inputs."rn-v0_1_9".owner = "nim-nix-pkgs";
  inputs."rn-v0_1_9".ref   = "master";
  inputs."rn-v0_1_9".repo  = "rn";
  inputs."rn-v0_1_9".type  = "github";
  inputs."rn-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_0".dir   = "v0_2_0";
  inputs."rn-v0_2_0".owner = "nim-nix-pkgs";
  inputs."rn-v0_2_0".ref   = "master";
  inputs."rn-v0_2_0".repo  = "rn";
  inputs."rn-v0_2_0".type  = "github";
  inputs."rn-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_1".dir   = "v0_2_1";
  inputs."rn-v0_2_1".owner = "nim-nix-pkgs";
  inputs."rn-v0_2_1".ref   = "master";
  inputs."rn-v0_2_1".repo  = "rn";
  inputs."rn-v0_2_1".type  = "github";
  inputs."rn-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_2".dir   = "v0_2_2";
  inputs."rn-v0_2_2".owner = "nim-nix-pkgs";
  inputs."rn-v0_2_2".ref   = "master";
  inputs."rn-v0_2_2".repo  = "rn";
  inputs."rn-v0_2_2".type  = "github";
  inputs."rn-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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