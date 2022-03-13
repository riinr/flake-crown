{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimly-master".dir   = "master";
  inputs."nimly-master".owner = "nim-nix-pkgs";
  inputs."nimly-master".ref   = "master";
  inputs."nimly-master".repo  = "nimly";
  inputs."nimly-master".type  = "github";
  inputs."nimly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_0_0".dir   = "v0_0_0";
  inputs."nimly-v0_0_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_0_0".ref   = "master";
  inputs."nimly-v0_0_0".repo  = "nimly";
  inputs."nimly-v0_0_0".type  = "github";
  inputs."nimly-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_1_0".dir   = "v0_1_0";
  inputs."nimly-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_1_0".ref   = "master";
  inputs."nimly-v0_1_0".repo  = "nimly";
  inputs."nimly-v0_1_0".type  = "github";
  inputs."nimly-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_2_0".dir   = "v0_2_0";
  inputs."nimly-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_2_0".ref   = "master";
  inputs."nimly-v0_2_0".repo  = "nimly";
  inputs."nimly-v0_2_0".type  = "github";
  inputs."nimly-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_2_1".dir   = "v0_2_1";
  inputs."nimly-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimly-v0_2_1".ref   = "master";
  inputs."nimly-v0_2_1".repo  = "nimly";
  inputs."nimly-v0_2_1".type  = "github";
  inputs."nimly-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_3_0".dir   = "v0_3_0";
  inputs."nimly-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_3_0".ref   = "master";
  inputs."nimly-v0_3_0".repo  = "nimly";
  inputs."nimly-v0_3_0".type  = "github";
  inputs."nimly-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_0".dir   = "v0_4_0";
  inputs."nimly-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_4_0".ref   = "master";
  inputs."nimly-v0_4_0".repo  = "nimly";
  inputs."nimly-v0_4_0".type  = "github";
  inputs."nimly-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_1".dir   = "v0_4_1";
  inputs."nimly-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimly-v0_4_1".ref   = "master";
  inputs."nimly-v0_4_1".repo  = "nimly";
  inputs."nimly-v0_4_1".type  = "github";
  inputs."nimly-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_2".dir   = "v0_4_2";
  inputs."nimly-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimly-v0_4_2".ref   = "master";
  inputs."nimly-v0_4_2".repo  = "nimly";
  inputs."nimly-v0_4_2".type  = "github";
  inputs."nimly-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_5_0".dir   = "v0_5_0";
  inputs."nimly-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_5_0".ref   = "master";
  inputs."nimly-v0_5_0".repo  = "nimly";
  inputs."nimly-v0_5_0".type  = "github";
  inputs."nimly-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_5_1".dir   = "v0_5_1";
  inputs."nimly-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimly-v0_5_1".ref   = "master";
  inputs."nimly-v0_5_1".repo  = "nimly";
  inputs."nimly-v0_5_1".type  = "github";
  inputs."nimly-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_6_0".dir   = "v0_6_0";
  inputs."nimly-v0_6_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_6_0".ref   = "master";
  inputs."nimly-v0_6_0".repo  = "nimly";
  inputs."nimly-v0_6_0".type  = "github";
  inputs."nimly-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_6_1".dir   = "v0_6_1";
  inputs."nimly-v0_6_1".owner = "nim-nix-pkgs";
  inputs."nimly-v0_6_1".ref   = "master";
  inputs."nimly-v0_6_1".repo  = "nimly";
  inputs."nimly-v0_6_1".type  = "github";
  inputs."nimly-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_7_0".dir   = "v0_7_0";
  inputs."nimly-v0_7_0".owner = "nim-nix-pkgs";
  inputs."nimly-v0_7_0".ref   = "master";
  inputs."nimly-v0_7_0".repo  = "nimly";
  inputs."nimly-v0_7_0".type  = "github";
  inputs."nimly-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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