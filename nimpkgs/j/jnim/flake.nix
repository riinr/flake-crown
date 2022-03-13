{
  description = ''Nim - Java bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jnim-master".dir   = "master";
  inputs."jnim-master".owner = "nim-nix-pkgs";
  inputs."jnim-master".ref   = "master";
  inputs."jnim-master".repo  = "jnim";
  inputs."jnim-master".type  = "github";
  inputs."jnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_1_0".dir   = "v0_1_0";
  inputs."jnim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jnim-v0_1_0".ref   = "master";
  inputs."jnim-v0_1_0".repo  = "jnim";
  inputs."jnim-v0_1_0".type  = "github";
  inputs."jnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_1_1".dir   = "v0_1_1";
  inputs."jnim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."jnim-v0_1_1".ref   = "master";
  inputs."jnim-v0_1_1".repo  = "jnim";
  inputs."jnim-v0_1_1".type  = "github";
  inputs."jnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_0".dir   = "v0_2_0";
  inputs."jnim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_0".ref   = "master";
  inputs."jnim-v0_2_0".repo  = "jnim";
  inputs."jnim-v0_2_0".type  = "github";
  inputs."jnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_1".dir   = "v0_2_1";
  inputs."jnim-v0_2_1".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_1".ref   = "master";
  inputs."jnim-v0_2_1".repo  = "jnim";
  inputs."jnim-v0_2_1".type  = "github";
  inputs."jnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_2".dir   = "v0_2_2";
  inputs."jnim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_2".ref   = "master";
  inputs."jnim-v0_2_2".repo  = "jnim";
  inputs."jnim-v0_2_2".type  = "github";
  inputs."jnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_3".dir   = "v0_2_3";
  inputs."jnim-v0_2_3".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_3".ref   = "master";
  inputs."jnim-v0_2_3".repo  = "jnim";
  inputs."jnim-v0_2_3".type  = "github";
  inputs."jnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_4".dir   = "v0_2_4";
  inputs."jnim-v0_2_4".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_4".ref   = "master";
  inputs."jnim-v0_2_4".repo  = "jnim";
  inputs."jnim-v0_2_4".type  = "github";
  inputs."jnim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_5".dir   = "v0_2_5";
  inputs."jnim-v0_2_5".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_5".ref   = "master";
  inputs."jnim-v0_2_5".repo  = "jnim";
  inputs."jnim-v0_2_5".type  = "github";
  inputs."jnim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_6".dir   = "v0_2_6";
  inputs."jnim-v0_2_6".owner = "nim-nix-pkgs";
  inputs."jnim-v0_2_6".ref   = "master";
  inputs."jnim-v0_2_6".repo  = "jnim";
  inputs."jnim-v0_2_6".type  = "github";
  inputs."jnim-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_0".dir   = "v0_3_0";
  inputs."jnim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_0".ref   = "master";
  inputs."jnim-v0_3_0".repo  = "jnim";
  inputs."jnim-v0_3_0".type  = "github";
  inputs."jnim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_1".dir   = "v0_3_1";
  inputs."jnim-v0_3_1".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_1".ref   = "master";
  inputs."jnim-v0_3_1".repo  = "jnim";
  inputs."jnim-v0_3_1".type  = "github";
  inputs."jnim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_2".dir   = "v0_3_2";
  inputs."jnim-v0_3_2".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_2".ref   = "master";
  inputs."jnim-v0_3_2".repo  = "jnim";
  inputs."jnim-v0_3_2".type  = "github";
  inputs."jnim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_3".dir   = "v0_3_3";
  inputs."jnim-v0_3_3".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_3".ref   = "master";
  inputs."jnim-v0_3_3".repo  = "jnim";
  inputs."jnim-v0_3_3".type  = "github";
  inputs."jnim-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_4".dir   = "v0_3_4";
  inputs."jnim-v0_3_4".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_4".ref   = "master";
  inputs."jnim-v0_3_4".repo  = "jnim";
  inputs."jnim-v0_3_4".type  = "github";
  inputs."jnim-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_5".dir   = "v0_3_5";
  inputs."jnim-v0_3_5".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_5".ref   = "master";
  inputs."jnim-v0_3_5".repo  = "jnim";
  inputs."jnim-v0_3_5".type  = "github";
  inputs."jnim-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_6".dir   = "v0_3_6";
  inputs."jnim-v0_3_6".owner = "nim-nix-pkgs";
  inputs."jnim-v0_3_6".ref   = "master";
  inputs."jnim-v0_3_6".repo  = "jnim";
  inputs."jnim-v0_3_6".type  = "github";
  inputs."jnim-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_0".dir   = "v0_4_0";
  inputs."jnim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."jnim-v0_4_0".ref   = "master";
  inputs."jnim-v0_4_0".repo  = "jnim";
  inputs."jnim-v0_4_0".type  = "github";
  inputs."jnim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_1".dir   = "v0_4_1";
  inputs."jnim-v0_4_1".owner = "nim-nix-pkgs";
  inputs."jnim-v0_4_1".ref   = "master";
  inputs."jnim-v0_4_1".repo  = "jnim";
  inputs."jnim-v0_4_1".type  = "github";
  inputs."jnim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_2".dir   = "v0_4_2";
  inputs."jnim-v0_4_2".owner = "nim-nix-pkgs";
  inputs."jnim-v0_4_2".ref   = "master";
  inputs."jnim-v0_4_2".repo  = "jnim";
  inputs."jnim-v0_4_2".type  = "github";
  inputs."jnim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_5".dir   = "v0_5";
  inputs."jnim-v0_5".owner = "nim-nix-pkgs";
  inputs."jnim-v0_5".ref   = "master";
  inputs."jnim-v0_5".repo  = "jnim";
  inputs."jnim-v0_5".type  = "github";
  inputs."jnim-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_5_1".dir   = "v0_5_1";
  inputs."jnim-v0_5_1".owner = "nim-nix-pkgs";
  inputs."jnim-v0_5_1".ref   = "master";
  inputs."jnim-v0_5_1".repo  = "jnim";
  inputs."jnim-v0_5_1".type  = "github";
  inputs."jnim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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