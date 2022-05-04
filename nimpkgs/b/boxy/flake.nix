{
  description = ''2D GPU rendering with a tiling atlas.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."boxy-master".dir   = "master";
  inputs."boxy-master".owner = "nim-nix-pkgs";
  inputs."boxy-master".ref   = "master";
  inputs."boxy-master".repo  = "boxy";
  inputs."boxy-master".type  = "github";
  inputs."boxy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_1_0".dir   = "0_1_0";
  inputs."boxy-0_1_0".owner = "nim-nix-pkgs";
  inputs."boxy-0_1_0".ref   = "master";
  inputs."boxy-0_1_0".repo  = "boxy";
  inputs."boxy-0_1_0".type  = "github";
  inputs."boxy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_1_1".dir   = "0_1_1";
  inputs."boxy-0_1_1".owner = "nim-nix-pkgs";
  inputs."boxy-0_1_1".ref   = "master";
  inputs."boxy-0_1_1".repo  = "boxy";
  inputs."boxy-0_1_1".type  = "github";
  inputs."boxy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_2_0".dir   = "0_2_0";
  inputs."boxy-0_2_0".owner = "nim-nix-pkgs";
  inputs."boxy-0_2_0".ref   = "master";
  inputs."boxy-0_2_0".repo  = "boxy";
  inputs."boxy-0_2_0".type  = "github";
  inputs."boxy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_0".dir   = "0_3_0";
  inputs."boxy-0_3_0".owner = "nim-nix-pkgs";
  inputs."boxy-0_3_0".ref   = "master";
  inputs."boxy-0_3_0".repo  = "boxy";
  inputs."boxy-0_3_0".type  = "github";
  inputs."boxy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_1".dir   = "0_3_1";
  inputs."boxy-0_3_1".owner = "nim-nix-pkgs";
  inputs."boxy-0_3_1".ref   = "master";
  inputs."boxy-0_3_1".repo  = "boxy";
  inputs."boxy-0_3_1".type  = "github";
  inputs."boxy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_2".dir   = "0_3_2";
  inputs."boxy-0_3_2".owner = "nim-nix-pkgs";
  inputs."boxy-0_3_2".ref   = "master";
  inputs."boxy-0_3_2".repo  = "boxy";
  inputs."boxy-0_3_2".type  = "github";
  inputs."boxy-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_3".dir   = "0_3_3";
  inputs."boxy-0_3_3".owner = "nim-nix-pkgs";
  inputs."boxy-0_3_3".ref   = "master";
  inputs."boxy-0_3_3".repo  = "boxy";
  inputs."boxy-0_3_3".type  = "github";
  inputs."boxy-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_4".dir   = "0_3_4";
  inputs."boxy-0_3_4".owner = "nim-nix-pkgs";
  inputs."boxy-0_3_4".ref   = "master";
  inputs."boxy-0_3_4".repo  = "boxy";
  inputs."boxy-0_3_4".type  = "github";
  inputs."boxy-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_4_0".dir   = "0_4_0";
  inputs."boxy-0_4_0".owner = "nim-nix-pkgs";
  inputs."boxy-0_4_0".ref   = "master";
  inputs."boxy-0_4_0".repo  = "boxy";
  inputs."boxy-0_4_0".type  = "github";
  inputs."boxy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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