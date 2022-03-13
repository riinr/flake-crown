{
  description = ''A Beautiful Markdown Parser in the Nim World.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."markdown-master".dir   = "master";
  inputs."markdown-master".owner = "nim-nix-pkgs";
  inputs."markdown-master".ref   = "master";
  inputs."markdown-master".repo  = "markdown";
  inputs."markdown-master".type  = "github";
  inputs."markdown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_0".dir   = "v0_1_0";
  inputs."markdown-v0_1_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_1_0".ref   = "master";
  inputs."markdown-v0_1_0".repo  = "markdown";
  inputs."markdown-v0_1_0".type  = "github";
  inputs."markdown-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_1".dir   = "v0_1_1";
  inputs."markdown-v0_1_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_1_1".ref   = "master";
  inputs."markdown-v0_1_1".repo  = "markdown";
  inputs."markdown-v0_1_1".type  = "github";
  inputs."markdown-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_1_2".dir   = "v0_1_2";
  inputs."markdown-v0_1_2".owner = "nim-nix-pkgs";
  inputs."markdown-v0_1_2".ref   = "master";
  inputs."markdown-v0_1_2".repo  = "markdown";
  inputs."markdown-v0_1_2".type  = "github";
  inputs."markdown-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_2_0".dir   = "v0_2_0";
  inputs."markdown-v0_2_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_2_0".ref   = "master";
  inputs."markdown-v0_2_0".repo  = "markdown";
  inputs."markdown-v0_2_0".type  = "github";
  inputs."markdown-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_0".dir   = "v0_3_0";
  inputs."markdown-v0_3_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_3_0".ref   = "master";
  inputs."markdown-v0_3_0".repo  = "markdown";
  inputs."markdown-v0_3_0".type  = "github";
  inputs."markdown-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_1".dir   = "v0_3_1";
  inputs."markdown-v0_3_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_3_1".ref   = "master";
  inputs."markdown-v0_3_1".repo  = "markdown";
  inputs."markdown-v0_3_1".type  = "github";
  inputs."markdown-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_2".dir   = "v0_3_2";
  inputs."markdown-v0_3_2".owner = "nim-nix-pkgs";
  inputs."markdown-v0_3_2".ref   = "master";
  inputs."markdown-v0_3_2".repo  = "markdown";
  inputs."markdown-v0_3_2".type  = "github";
  inputs."markdown-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_3".dir   = "v0_3_3";
  inputs."markdown-v0_3_3".owner = "nim-nix-pkgs";
  inputs."markdown-v0_3_3".ref   = "master";
  inputs."markdown-v0_3_3".repo  = "markdown";
  inputs."markdown-v0_3_3".type  = "github";
  inputs."markdown-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_3_4".dir   = "v0_3_4";
  inputs."markdown-v0_3_4".owner = "nim-nix-pkgs";
  inputs."markdown-v0_3_4".ref   = "master";
  inputs."markdown-v0_3_4".repo  = "markdown";
  inputs."markdown-v0_3_4".type  = "github";
  inputs."markdown-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_4_0".dir   = "v0_4_0";
  inputs."markdown-v0_4_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_4_0".ref   = "master";
  inputs."markdown-v0_4_0".repo  = "markdown";
  inputs."markdown-v0_4_0".type  = "github";
  inputs."markdown-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_0".dir   = "v0_5_0";
  inputs."markdown-v0_5_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_5_0".ref   = "master";
  inputs."markdown-v0_5_0".repo  = "markdown";
  inputs."markdown-v0_5_0".type  = "github";
  inputs."markdown-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_1".dir   = "v0_5_1";
  inputs."markdown-v0_5_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_5_1".ref   = "master";
  inputs."markdown-v0_5_1".repo  = "markdown";
  inputs."markdown-v0_5_1".type  = "github";
  inputs."markdown-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_5_2".dir   = "v0_5_2";
  inputs."markdown-v0_5_2".owner = "nim-nix-pkgs";
  inputs."markdown-v0_5_2".ref   = "master";
  inputs."markdown-v0_5_2".repo  = "markdown";
  inputs."markdown-v0_5_2".type  = "github";
  inputs."markdown-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_6_0".dir   = "v0_6_0";
  inputs."markdown-v0_6_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_6_0".ref   = "master";
  inputs."markdown-v0_6_0".repo  = "markdown";
  inputs."markdown-v0_6_0".type  = "github";
  inputs."markdown-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_6_1".dir   = "v0_6_1";
  inputs."markdown-v0_6_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_6_1".ref   = "master";
  inputs."markdown-v0_6_1".repo  = "markdown";
  inputs."markdown-v0_6_1".type  = "github";
  inputs."markdown-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_0".dir   = "v0_7_0";
  inputs."markdown-v0_7_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_7_0".ref   = "master";
  inputs."markdown-v0_7_0".repo  = "markdown";
  inputs."markdown-v0_7_0".type  = "github";
  inputs."markdown-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_1".dir   = "v0_7_1";
  inputs."markdown-v0_7_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_7_1".ref   = "master";
  inputs."markdown-v0_7_1".repo  = "markdown";
  inputs."markdown-v0_7_1".type  = "github";
  inputs."markdown-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_7_2".dir   = "v0_7_2";
  inputs."markdown-v0_7_2".owner = "nim-nix-pkgs";
  inputs."markdown-v0_7_2".ref   = "master";
  inputs."markdown-v0_7_2".repo  = "markdown";
  inputs."markdown-v0_7_2".type  = "github";
  inputs."markdown-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_0".dir   = "v0_8_0";
  inputs."markdown-v0_8_0".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_0".ref   = "master";
  inputs."markdown-v0_8_0".repo  = "markdown";
  inputs."markdown-v0_8_0".type  = "github";
  inputs."markdown-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_1".dir   = "v0_8_1";
  inputs."markdown-v0_8_1".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_1".ref   = "master";
  inputs."markdown-v0_8_1".repo  = "markdown";
  inputs."markdown-v0_8_1".type  = "github";
  inputs."markdown-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_2".dir   = "v0_8_2";
  inputs."markdown-v0_8_2".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_2".ref   = "master";
  inputs."markdown-v0_8_2".repo  = "markdown";
  inputs."markdown-v0_8_2".type  = "github";
  inputs."markdown-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_3".dir   = "v0_8_3";
  inputs."markdown-v0_8_3".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_3".ref   = "master";
  inputs."markdown-v0_8_3".repo  = "markdown";
  inputs."markdown-v0_8_3".type  = "github";
  inputs."markdown-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_4".dir   = "v0_8_4";
  inputs."markdown-v0_8_4".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_4".ref   = "master";
  inputs."markdown-v0_8_4".repo  = "markdown";
  inputs."markdown-v0_8_4".type  = "github";
  inputs."markdown-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown-v0_8_5".dir   = "v0_8_5";
  inputs."markdown-v0_8_5".owner = "nim-nix-pkgs";
  inputs."markdown-v0_8_5".ref   = "master";
  inputs."markdown-v0_8_5".repo  = "markdown";
  inputs."markdown-v0_8_5".type  = "github";
  inputs."markdown-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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