{
  description = ''Interactive Nim Shell'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."inim-master".dir   = "master";
  inputs."inim-master".owner = "nim-nix-pkgs";
  inputs."inim-master".ref   = "master";
  inputs."inim-master".repo  = "inim";
  inputs."inim-master".type  = "github";
  inputs."inim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_1_1".dir   = "0_1_1";
  inputs."inim-0_1_1".owner = "nim-nix-pkgs";
  inputs."inim-0_1_1".ref   = "master";
  inputs."inim-0_1_1".repo  = "inim";
  inputs."inim-0_1_1".type  = "github";
  inputs."inim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_0".dir   = "0_2_0";
  inputs."inim-0_2_0".owner = "nim-nix-pkgs";
  inputs."inim-0_2_0".ref   = "master";
  inputs."inim-0_2_0".repo  = "inim";
  inputs."inim-0_2_0".type  = "github";
  inputs."inim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_1".dir   = "0_2_1";
  inputs."inim-0_2_1".owner = "nim-nix-pkgs";
  inputs."inim-0_2_1".ref   = "master";
  inputs."inim-0_2_1".repo  = "inim";
  inputs."inim-0_2_1".type  = "github";
  inputs."inim-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_2".dir   = "0_2_2";
  inputs."inim-0_2_2".owner = "nim-nix-pkgs";
  inputs."inim-0_2_2".ref   = "master";
  inputs."inim-0_2_2".repo  = "inim";
  inputs."inim-0_2_2".type  = "github";
  inputs."inim-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_3".dir   = "0_2_3";
  inputs."inim-0_2_3".owner = "nim-nix-pkgs";
  inputs."inim-0_2_3".ref   = "master";
  inputs."inim-0_2_3".repo  = "inim";
  inputs."inim-0_2_3".type  = "github";
  inputs."inim-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_4".dir   = "0_2_4";
  inputs."inim-0_2_4".owner = "nim-nix-pkgs";
  inputs."inim-0_2_4".ref   = "master";
  inputs."inim-0_2_4".repo  = "inim";
  inputs."inim-0_2_4".type  = "github";
  inputs."inim-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_5".dir   = "0_2_5";
  inputs."inim-0_2_5".owner = "nim-nix-pkgs";
  inputs."inim-0_2_5".ref   = "master";
  inputs."inim-0_2_5".repo  = "inim";
  inputs."inim-0_2_5".type  = "github";
  inputs."inim-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_3_0".dir   = "0_3_0";
  inputs."inim-0_3_0".owner = "nim-nix-pkgs";
  inputs."inim-0_3_0".ref   = "master";
  inputs."inim-0_3_0".repo  = "inim";
  inputs."inim-0_3_0".type  = "github";
  inputs."inim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_3_1".dir   = "0_3_1";
  inputs."inim-0_3_1".owner = "nim-nix-pkgs";
  inputs."inim-0_3_1".ref   = "master";
  inputs."inim-0_3_1".repo  = "inim";
  inputs."inim-0_3_1".type  = "github";
  inputs."inim-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_0".dir   = "0_4_0";
  inputs."inim-0_4_0".owner = "nim-nix-pkgs";
  inputs."inim-0_4_0".ref   = "master";
  inputs."inim-0_4_0".repo  = "inim";
  inputs."inim-0_4_0".type  = "github";
  inputs."inim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_1".dir   = "0_4_1";
  inputs."inim-0_4_1".owner = "nim-nix-pkgs";
  inputs."inim-0_4_1".ref   = "master";
  inputs."inim-0_4_1".repo  = "inim";
  inputs."inim-0_4_1".type  = "github";
  inputs."inim-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_2".dir   = "0_4_2";
  inputs."inim-0_4_2".owner = "nim-nix-pkgs";
  inputs."inim-0_4_2".ref   = "master";
  inputs."inim-0_4_2".repo  = "inim";
  inputs."inim-0_4_2".type  = "github";
  inputs."inim-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_2".dir   = "v0_4_2";
  inputs."inim-v0_4_2".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_2".ref   = "master";
  inputs."inim-v0_4_2".repo  = "inim";
  inputs."inim-v0_4_2".type  = "github";
  inputs."inim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_3".dir   = "v0_4_3";
  inputs."inim-v0_4_3".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_3".ref   = "master";
  inputs."inim-v0_4_3".repo  = "inim";
  inputs."inim-v0_4_3".type  = "github";
  inputs."inim-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_4".dir   = "v0_4_4";
  inputs."inim-v0_4_4".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_4".ref   = "master";
  inputs."inim-v0_4_4".repo  = "inim";
  inputs."inim-v0_4_4".type  = "github";
  inputs."inim-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_5".dir   = "v0_4_5";
  inputs."inim-v0_4_5".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_5".ref   = "master";
  inputs."inim-v0_4_5".repo  = "inim";
  inputs."inim-v0_4_5".type  = "github";
  inputs."inim-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_6".dir   = "v0_4_6";
  inputs."inim-v0_4_6".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_6".ref   = "master";
  inputs."inim-v0_4_6".repo  = "inim";
  inputs."inim-v0_4_6".type  = "github";
  inputs."inim-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_7".dir   = "v0_4_7";
  inputs."inim-v0_4_7".owner = "nim-nix-pkgs";
  inputs."inim-v0_4_7".ref   = "master";
  inputs."inim-v0_4_7".repo  = "inim";
  inputs."inim-v0_4_7".type  = "github";
  inputs."inim-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_5_0".dir   = "v0_5_0";
  inputs."inim-v0_5_0".owner = "nim-nix-pkgs";
  inputs."inim-v0_5_0".ref   = "master";
  inputs."inim-v0_5_0".repo  = "inim";
  inputs."inim-v0_5_0".type  = "github";
  inputs."inim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_6_0".dir   = "v0_6_0";
  inputs."inim-v0_6_0".owner = "nim-nix-pkgs";
  inputs."inim-v0_6_0".ref   = "master";
  inputs."inim-v0_6_0".repo  = "inim";
  inputs."inim-v0_6_0".type  = "github";
  inputs."inim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_6_1".dir   = "v0_6_1";
  inputs."inim-v0_6_1".owner = "nim-nix-pkgs";
  inputs."inim-v0_6_1".ref   = "master";
  inputs."inim-v0_6_1".repo  = "inim";
  inputs."inim-v0_6_1".type  = "github";
  inputs."inim-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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