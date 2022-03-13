{
  description = ''xam'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xam-main".dir   = "main";
  inputs."xam-main".owner = "nim-nix-pkgs";
  inputs."xam-main".ref   = "master";
  inputs."xam-main".repo  = "xam";
  inputs."xam-main".type  = "github";
  inputs."xam-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_1_0".dir   = "0_1_0";
  inputs."xam-0_1_0".owner = "nim-nix-pkgs";
  inputs."xam-0_1_0".ref   = "master";
  inputs."xam-0_1_0".repo  = "xam";
  inputs."xam-0_1_0".type  = "github";
  inputs."xam-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_2_0".dir   = "0_2_0";
  inputs."xam-0_2_0".owner = "nim-nix-pkgs";
  inputs."xam-0_2_0".ref   = "master";
  inputs."xam-0_2_0".repo  = "xam";
  inputs."xam-0_2_0".type  = "github";
  inputs."xam-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_3_0".dir   = "0_3_0";
  inputs."xam-0_3_0".owner = "nim-nix-pkgs";
  inputs."xam-0_3_0".ref   = "master";
  inputs."xam-0_3_0".repo  = "xam";
  inputs."xam-0_3_0".type  = "github";
  inputs."xam-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_4_0".dir   = "0_4_0";
  inputs."xam-0_4_0".owner = "nim-nix-pkgs";
  inputs."xam-0_4_0".ref   = "master";
  inputs."xam-0_4_0".repo  = "xam";
  inputs."xam-0_4_0".type  = "github";
  inputs."xam-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_5_0".dir   = "0_5_0";
  inputs."xam-0_5_0".owner = "nim-nix-pkgs";
  inputs."xam-0_5_0".ref   = "master";
  inputs."xam-0_5_0".repo  = "xam";
  inputs."xam-0_5_0".type  = "github";
  inputs."xam-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_6_0".dir   = "0_6_0";
  inputs."xam-0_6_0".owner = "nim-nix-pkgs";
  inputs."xam-0_6_0".ref   = "master";
  inputs."xam-0_6_0".repo  = "xam";
  inputs."xam-0_6_0".type  = "github";
  inputs."xam-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_7_0".dir   = "0_7_0";
  inputs."xam-0_7_0".owner = "nim-nix-pkgs";
  inputs."xam-0_7_0".ref   = "master";
  inputs."xam-0_7_0".repo  = "xam";
  inputs."xam-0_7_0".type  = "github";
  inputs."xam-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_8_0".dir   = "0_8_0";
  inputs."xam-0_8_0".owner = "nim-nix-pkgs";
  inputs."xam-0_8_0".ref   = "master";
  inputs."xam-0_8_0".repo  = "xam";
  inputs."xam-0_8_0".type  = "github";
  inputs."xam-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_9_0".dir   = "0_9_0";
  inputs."xam-0_9_0".owner = "nim-nix-pkgs";
  inputs."xam-0_9_0".ref   = "master";
  inputs."xam-0_9_0".repo  = "xam";
  inputs."xam-0_9_0".type  = "github";
  inputs."xam-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_0_0".dir   = "1_0_0";
  inputs."xam-1_0_0".owner = "nim-nix-pkgs";
  inputs."xam-1_0_0".ref   = "master";
  inputs."xam-1_0_0".repo  = "xam";
  inputs."xam-1_0_0".type  = "github";
  inputs."xam-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_1_0".dir   = "1_1_0";
  inputs."xam-1_1_0".owner = "nim-nix-pkgs";
  inputs."xam-1_1_0".ref   = "master";
  inputs."xam-1_1_0".repo  = "xam";
  inputs."xam-1_1_0".type  = "github";
  inputs."xam-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_3_0".dir   = "1_3_0";
  inputs."xam-1_3_0".owner = "nim-nix-pkgs";
  inputs."xam-1_3_0".ref   = "master";
  inputs."xam-1_3_0".repo  = "xam";
  inputs."xam-1_3_0".type  = "github";
  inputs."xam-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_4_0".dir   = "1_4_0";
  inputs."xam-1_4_0".owner = "nim-nix-pkgs";
  inputs."xam-1_4_0".ref   = "master";
  inputs."xam-1_4_0".repo  = "xam";
  inputs."xam-1_4_0".type  = "github";
  inputs."xam-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_5_0".dir   = "1_5_0";
  inputs."xam-1_5_0".owner = "nim-nix-pkgs";
  inputs."xam-1_5_0".ref   = "master";
  inputs."xam-1_5_0".repo  = "xam";
  inputs."xam-1_5_0".type  = "github";
  inputs."xam-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_6_0".dir   = "1_6_0";
  inputs."xam-1_6_0".owner = "nim-nix-pkgs";
  inputs."xam-1_6_0".ref   = "master";
  inputs."xam-1_6_0".repo  = "xam";
  inputs."xam-1_6_0".type  = "github";
  inputs."xam-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_7_0".dir   = "1_7_0";
  inputs."xam-1_7_0".owner = "nim-nix-pkgs";
  inputs."xam-1_7_0".ref   = "master";
  inputs."xam-1_7_0".repo  = "xam";
  inputs."xam-1_7_0".type  = "github";
  inputs."xam-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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