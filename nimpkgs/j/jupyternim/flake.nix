{
  description = ''A Jupyter kernel for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jupyternim-master".dir   = "master";
  inputs."jupyternim-master".owner = "nim-nix-pkgs";
  inputs."jupyternim-master".ref   = "master";
  inputs."jupyternim-master".repo  = "jupyternim";
  inputs."jupyternim-master".type  = "github";
  inputs."jupyternim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_1_1".dir   = "0_1_1";
  inputs."jupyternim-0_1_1".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_1_1".ref   = "master";
  inputs."jupyternim-0_1_1".repo  = "jupyternim";
  inputs."jupyternim-0_1_1".type  = "github";
  inputs."jupyternim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_2_0".dir   = "0_2_0";
  inputs."jupyternim-0_2_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_2_0".ref   = "master";
  inputs."jupyternim-0_2_0".repo  = "jupyternim";
  inputs."jupyternim-0_2_0".type  = "github";
  inputs."jupyternim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_4_1".dir   = "0_4_1";
  inputs."jupyternim-0_4_1".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_4_1".ref   = "master";
  inputs."jupyternim-0_4_1".repo  = "jupyternim";
  inputs."jupyternim-0_4_1".type  = "github";
  inputs."jupyternim-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_4_2".dir   = "0_4_2";
  inputs."jupyternim-0_4_2".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_4_2".ref   = "master";
  inputs."jupyternim-0_4_2".repo  = "jupyternim";
  inputs."jupyternim-0_4_2".type  = "github";
  inputs."jupyternim-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_0".dir   = "0_5_0";
  inputs."jupyternim-0_5_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_0".ref   = "master";
  inputs."jupyternim-0_5_0".repo  = "jupyternim";
  inputs."jupyternim-0_5_0".type  = "github";
  inputs."jupyternim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_1".dir   = "0_5_1";
  inputs."jupyternim-0_5_1".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_1".ref   = "master";
  inputs."jupyternim-0_5_1".repo  = "jupyternim";
  inputs."jupyternim-0_5_1".type  = "github";
  inputs."jupyternim-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_2".dir   = "0_5_2";
  inputs."jupyternim-0_5_2".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_2".ref   = "master";
  inputs."jupyternim-0_5_2".repo  = "jupyternim";
  inputs."jupyternim-0_5_2".type  = "github";
  inputs."jupyternim-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_3".dir   = "0_5_3";
  inputs."jupyternim-0_5_3".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_3".ref   = "master";
  inputs."jupyternim-0_5_3".repo  = "jupyternim";
  inputs."jupyternim-0_5_3".type  = "github";
  inputs."jupyternim-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_4".dir   = "0_5_4";
  inputs."jupyternim-0_5_4".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_4".ref   = "master";
  inputs."jupyternim-0_5_4".repo  = "jupyternim";
  inputs."jupyternim-0_5_4".type  = "github";
  inputs."jupyternim-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_5".dir   = "0_5_5";
  inputs."jupyternim-0_5_5".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_5".ref   = "master";
  inputs."jupyternim-0_5_5".repo  = "jupyternim";
  inputs."jupyternim-0_5_5".type  = "github";
  inputs."jupyternim-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_7".dir   = "0_5_7";
  inputs."jupyternim-0_5_7".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_7".ref   = "master";
  inputs."jupyternim-0_5_7".repo  = "jupyternim";
  inputs."jupyternim-0_5_7".type  = "github";
  inputs."jupyternim-0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_5_8".dir   = "0_5_8";
  inputs."jupyternim-0_5_8".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_5_8".ref   = "master";
  inputs."jupyternim-0_5_8".repo  = "jupyternim";
  inputs."jupyternim-0_5_8".type  = "github";
  inputs."jupyternim-0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_6_0".dir   = "0_6_0";
  inputs."jupyternim-0_6_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_6_0".ref   = "master";
  inputs."jupyternim-0_6_0".repo  = "jupyternim";
  inputs."jupyternim-0_6_0".type  = "github";
  inputs."jupyternim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_6_1".dir   = "0_6_1";
  inputs."jupyternim-0_6_1".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_6_1".ref   = "master";
  inputs."jupyternim-0_6_1".repo  = "jupyternim";
  inputs."jupyternim-0_6_1".type  = "github";
  inputs."jupyternim-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_6_2".dir   = "0_6_2";
  inputs."jupyternim-0_6_2".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_6_2".ref   = "master";
  inputs."jupyternim-0_6_2".repo  = "jupyternim";
  inputs."jupyternim-0_6_2".type  = "github";
  inputs."jupyternim-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_6_3".dir   = "0_6_3";
  inputs."jupyternim-0_6_3".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_6_3".ref   = "master";
  inputs."jupyternim-0_6_3".repo  = "jupyternim";
  inputs."jupyternim-0_6_3".type  = "github";
  inputs."jupyternim-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-0_7_0".dir   = "0_7_0";
  inputs."jupyternim-0_7_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-0_7_0".ref   = "master";
  inputs."jupyternim-0_7_0".repo  = "jupyternim";
  inputs."jupyternim-0_7_0".type  = "github";
  inputs."jupyternim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-v0_3_0".dir   = "v0_3_0";
  inputs."jupyternim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-v0_3_0".ref   = "master";
  inputs."jupyternim-v0_3_0".repo  = "jupyternim";
  inputs."jupyternim-v0_3_0".type  = "github";
  inputs."jupyternim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-v0_4_0".dir   = "v0_4_0";
  inputs."jupyternim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."jupyternim-v0_4_0".ref   = "master";
  inputs."jupyternim-v0_4_0".repo  = "jupyternim";
  inputs."jupyternim-v0_4_0".type  = "github";
  inputs."jupyternim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jupyternim-v0_4_1".dir   = "v0_4_1";
  inputs."jupyternim-v0_4_1".owner = "nim-nix-pkgs";
  inputs."jupyternim-v0_4_1".ref   = "master";
  inputs."jupyternim-v0_4_1".repo  = "jupyternim";
  inputs."jupyternim-v0_4_1".type  = "github";
  inputs."jupyternim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jupyternim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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