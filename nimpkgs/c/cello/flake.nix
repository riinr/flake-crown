{
  description = ''String algorithms with succinct data structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cello-master".dir   = "master";
  inputs."cello-master".owner = "nim-nix-pkgs";
  inputs."cello-master".ref   = "master";
  inputs."cello-master".repo  = "cello";
  inputs."cello-master".type  = "github";
  inputs."cello-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_0".dir   = "0_1_0";
  inputs."cello-0_1_0".owner = "nim-nix-pkgs";
  inputs."cello-0_1_0".ref   = "master";
  inputs."cello-0_1_0".repo  = "cello";
  inputs."cello-0_1_0".type  = "github";
  inputs."cello-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_1".dir   = "0_1_1";
  inputs."cello-0_1_1".owner = "nim-nix-pkgs";
  inputs."cello-0_1_1".ref   = "master";
  inputs."cello-0_1_1".repo  = "cello";
  inputs."cello-0_1_1".type  = "github";
  inputs."cello-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_2".dir   = "0_1_2";
  inputs."cello-0_1_2".owner = "nim-nix-pkgs";
  inputs."cello-0_1_2".ref   = "master";
  inputs."cello-0_1_2".repo  = "cello";
  inputs."cello-0_1_2".type  = "github";
  inputs."cello-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_3".dir   = "0_1_3";
  inputs."cello-0_1_3".owner = "nim-nix-pkgs";
  inputs."cello-0_1_3".ref   = "master";
  inputs."cello-0_1_3".repo  = "cello";
  inputs."cello-0_1_3".type  = "github";
  inputs."cello-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_4".dir   = "0_1_4";
  inputs."cello-0_1_4".owner = "nim-nix-pkgs";
  inputs."cello-0_1_4".ref   = "master";
  inputs."cello-0_1_4".repo  = "cello";
  inputs."cello-0_1_4".type  = "github";
  inputs."cello-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_5".dir   = "0_1_5";
  inputs."cello-0_1_5".owner = "nim-nix-pkgs";
  inputs."cello-0_1_5".ref   = "master";
  inputs."cello-0_1_5".repo  = "cello";
  inputs."cello-0_1_5".type  = "github";
  inputs."cello-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_1_6".dir   = "0_1_6";
  inputs."cello-0_1_6".owner = "nim-nix-pkgs";
  inputs."cello-0_1_6".ref   = "master";
  inputs."cello-0_1_6".repo  = "cello";
  inputs."cello-0_1_6".type  = "github";
  inputs."cello-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_2_0".dir   = "0_2_0";
  inputs."cello-0_2_0".owner = "nim-nix-pkgs";
  inputs."cello-0_2_0".ref   = "master";
  inputs."cello-0_2_0".repo  = "cello";
  inputs."cello-0_2_0".type  = "github";
  inputs."cello-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello-0_3_0".dir   = "0_3_0";
  inputs."cello-0_3_0".owner = "nim-nix-pkgs";
  inputs."cello-0_3_0".ref   = "master";
  inputs."cello-0_3_0".repo  = "cello";
  inputs."cello-0_3_0".type  = "github";
  inputs."cello-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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