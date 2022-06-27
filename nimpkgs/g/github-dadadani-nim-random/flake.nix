{
  description = ''Pseudo-random number generation library inspired by Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."random-master".dir   = "master";
  inputs."random-master".owner = "nim-nix-pkgs";
  inputs."random-master".ref   = "master";
  inputs."random-master".repo  = "random";
  inputs."random-master".type  = "github";
  inputs."random-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-dadadani-nim-random-v0_2_4".dir   = "v0_2_4";
  inputs."github-dadadani-nim-random-v0_2_4".owner = "nim-nix-pkgs";
  inputs."github-dadadani-nim-random-v0_2_4".ref   = "master";
  inputs."github-dadadani-nim-random-v0_2_4".repo  = "github-dadadani-nim-random";
  inputs."github-dadadani-nim-random-v0_2_4".type  = "github";
  inputs."github-dadadani-nim-random-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-dadadani-nim-random-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_3_0".dir   = "v0_3_0";
  inputs."random-v0_3_0".owner = "nim-nix-pkgs";
  inputs."random-v0_3_0".ref   = "master";
  inputs."random-v0_3_0".repo  = "random";
  inputs."random-v0_3_0".type  = "github";
  inputs."random-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_4_0".dir   = "v0_4_0";
  inputs."random-v0_4_0".owner = "nim-nix-pkgs";
  inputs."random-v0_4_0".ref   = "master";
  inputs."random-v0_4_0".repo  = "random";
  inputs."random-v0_4_0".type  = "github";
  inputs."random-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_0".dir   = "v0_5_0";
  inputs."random-v0_5_0".owner = "nim-nix-pkgs";
  inputs."random-v0_5_0".ref   = "master";
  inputs."random-v0_5_0".repo  = "random";
  inputs."random-v0_5_0".type  = "github";
  inputs."random-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_1".dir   = "v0_5_1";
  inputs."random-v0_5_1".owner = "nim-nix-pkgs";
  inputs."random-v0_5_1".ref   = "master";
  inputs."random-v0_5_1".repo  = "random";
  inputs."random-v0_5_1".type  = "github";
  inputs."random-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_2".dir   = "v0_5_2";
  inputs."random-v0_5_2".owner = "nim-nix-pkgs";
  inputs."random-v0_5_2".ref   = "master";
  inputs."random-v0_5_2".repo  = "random";
  inputs."random-v0_5_2".type  = "github";
  inputs."random-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_3".dir   = "v0_5_3";
  inputs."random-v0_5_3".owner = "nim-nix-pkgs";
  inputs."random-v0_5_3".ref   = "master";
  inputs."random-v0_5_3".repo  = "random";
  inputs."random-v0_5_3".type  = "github";
  inputs."random-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_4".dir   = "v0_5_4";
  inputs."random-v0_5_4".owner = "nim-nix-pkgs";
  inputs."random-v0_5_4".ref   = "master";
  inputs."random-v0_5_4".repo  = "random";
  inputs."random-v0_5_4".type  = "github";
  inputs."random-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_5".dir   = "v0_5_5";
  inputs."random-v0_5_5".owner = "nim-nix-pkgs";
  inputs."random-v0_5_5".ref   = "master";
  inputs."random-v0_5_5".repo  = "random";
  inputs."random-v0_5_5".type  = "github";
  inputs."random-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_6".dir   = "v0_5_6";
  inputs."random-v0_5_6".owner = "nim-nix-pkgs";
  inputs."random-v0_5_6".ref   = "master";
  inputs."random-v0_5_6".repo  = "random";
  inputs."random-v0_5_6".type  = "github";
  inputs."random-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_7".dir   = "v0_5_7";
  inputs."random-v0_5_7".owner = "nim-nix-pkgs";
  inputs."random-v0_5_7".ref   = "master";
  inputs."random-v0_5_7".repo  = "random";
  inputs."random-v0_5_7".type  = "github";
  inputs."random-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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