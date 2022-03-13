{
  description = ''measuring execution times written in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timeit-master".dir   = "master";
  inputs."timeit-master".owner = "nim-nix-pkgs";
  inputs."timeit-master".ref   = "master";
  inputs."timeit-master".repo  = "timeit";
  inputs."timeit-master".type  = "github";
  inputs."timeit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-0_1_2".dir   = "0_1_2";
  inputs."timeit-0_1_2".owner = "nim-nix-pkgs";
  inputs."timeit-0_1_2".ref   = "master";
  inputs."timeit-0_1_2".repo  = "timeit";
  inputs."timeit-0_1_2".type  = "github";
  inputs."timeit-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_0".dir   = "v0_1_0";
  inputs."timeit-v0_1_0".owner = "nim-nix-pkgs";
  inputs."timeit-v0_1_0".ref   = "master";
  inputs."timeit-v0_1_0".repo  = "timeit";
  inputs."timeit-v0_1_0".type  = "github";
  inputs."timeit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_1".dir   = "v0_1_1";
  inputs."timeit-v0_1_1".owner = "nim-nix-pkgs";
  inputs."timeit-v0_1_1".ref   = "master";
  inputs."timeit-v0_1_1".repo  = "timeit";
  inputs."timeit-v0_1_1".type  = "github";
  inputs."timeit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_6".dir   = "v0_1_6";
  inputs."timeit-v0_1_6".owner = "nim-nix-pkgs";
  inputs."timeit-v0_1_6".ref   = "master";
  inputs."timeit-v0_1_6".repo  = "timeit";
  inputs."timeit-v0_1_6".type  = "github";
  inputs."timeit-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_8".dir   = "v0_1_8";
  inputs."timeit-v0_1_8".owner = "nim-nix-pkgs";
  inputs."timeit-v0_1_8".ref   = "master";
  inputs."timeit-v0_1_8".repo  = "timeit";
  inputs."timeit-v0_1_8".type  = "github";
  inputs."timeit-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_0".dir   = "v0_2_0";
  inputs."timeit-v0_2_0".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_0".ref   = "master";
  inputs."timeit-v0_2_0".repo  = "timeit";
  inputs."timeit-v0_2_0".type  = "github";
  inputs."timeit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_1".dir   = "v0_2_1";
  inputs."timeit-v0_2_1".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_1".ref   = "master";
  inputs."timeit-v0_2_1".repo  = "timeit";
  inputs."timeit-v0_2_1".type  = "github";
  inputs."timeit-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_2".dir   = "v0_2_2";
  inputs."timeit-v0_2_2".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_2".ref   = "master";
  inputs."timeit-v0_2_2".repo  = "timeit";
  inputs."timeit-v0_2_2".type  = "github";
  inputs."timeit-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_4".dir   = "v0_2_4";
  inputs."timeit-v0_2_4".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_4".ref   = "master";
  inputs."timeit-v0_2_4".repo  = "timeit";
  inputs."timeit-v0_2_4".type  = "github";
  inputs."timeit-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_6".dir   = "v0_2_6";
  inputs."timeit-v0_2_6".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_6".ref   = "master";
  inputs."timeit-v0_2_6".repo  = "timeit";
  inputs."timeit-v0_2_6".type  = "github";
  inputs."timeit-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_8".dir   = "v0_2_8";
  inputs."timeit-v0_2_8".owner = "nim-nix-pkgs";
  inputs."timeit-v0_2_8".ref   = "master";
  inputs."timeit-v0_2_8".repo  = "timeit";
  inputs."timeit-v0_2_8".type  = "github";
  inputs."timeit-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_0".dir   = "v0_3_0";
  inputs."timeit-v0_3_0".owner = "nim-nix-pkgs";
  inputs."timeit-v0_3_0".ref   = "master";
  inputs."timeit-v0_3_0".repo  = "timeit";
  inputs."timeit-v0_3_0".type  = "github";
  inputs."timeit-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_2".dir   = "v0_3_2";
  inputs."timeit-v0_3_2".owner = "nim-nix-pkgs";
  inputs."timeit-v0_3_2".ref   = "master";
  inputs."timeit-v0_3_2".repo  = "timeit";
  inputs."timeit-v0_3_2".type  = "github";
  inputs."timeit-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_4".dir   = "v0_3_4";
  inputs."timeit-v0_3_4".owner = "nim-nix-pkgs";
  inputs."timeit-v0_3_4".ref   = "master";
  inputs."timeit-v0_3_4".repo  = "timeit";
  inputs."timeit-v0_3_4".type  = "github";
  inputs."timeit-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_6".dir   = "v0_3_6";
  inputs."timeit-v0_3_6".owner = "nim-nix-pkgs";
  inputs."timeit-v0_3_6".ref   = "master";
  inputs."timeit-v0_3_6".repo  = "timeit";
  inputs."timeit-v0_3_6".type  = "github";
  inputs."timeit-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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