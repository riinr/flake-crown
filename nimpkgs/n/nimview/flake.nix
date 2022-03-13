{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimview-main".dir   = "main";
  inputs."nimview-main".owner = "nim-nix-pkgs";
  inputs."nimview-main".ref   = "master";
  inputs."nimview-main".repo  = "nimview";
  inputs."nimview-main".type  = "github";
  inputs."nimview-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_0".dir   = "0_2_0";
  inputs."nimview-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimview-0_2_0".ref   = "master";
  inputs."nimview-0_2_0".repo  = "nimview";
  inputs."nimview-0_2_0".type  = "github";
  inputs."nimview-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_1".dir   = "0_2_1";
  inputs."nimview-0_2_1".owner = "nim-nix-pkgs";
  inputs."nimview-0_2_1".ref   = "master";
  inputs."nimview-0_2_1".repo  = "nimview";
  inputs."nimview-0_2_1".type  = "github";
  inputs."nimview-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_2".dir   = "0_2_2";
  inputs."nimview-0_2_2".owner = "nim-nix-pkgs";
  inputs."nimview-0_2_2".ref   = "master";
  inputs."nimview-0_2_2".repo  = "nimview";
  inputs."nimview-0_2_2".type  = "github";
  inputs."nimview-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_3".dir   = "0_2_3";
  inputs."nimview-0_2_3".owner = "nim-nix-pkgs";
  inputs."nimview-0_2_3".ref   = "master";
  inputs."nimview-0_2_3".repo  = "nimview";
  inputs."nimview-0_2_3".type  = "github";
  inputs."nimview-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_0".dir   = "0_3_0";
  inputs."nimview-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimview-0_3_0".ref   = "master";
  inputs."nimview-0_3_0".repo  = "nimview";
  inputs."nimview-0_3_0".type  = "github";
  inputs."nimview-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_1".dir   = "0_3_1";
  inputs."nimview-0_3_1".owner = "nim-nix-pkgs";
  inputs."nimview-0_3_1".ref   = "master";
  inputs."nimview-0_3_1".repo  = "nimview";
  inputs."nimview-0_3_1".type  = "github";
  inputs."nimview-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_2".dir   = "0_3_2";
  inputs."nimview-0_3_2".owner = "nim-nix-pkgs";
  inputs."nimview-0_3_2".ref   = "master";
  inputs."nimview-0_3_2".repo  = "nimview";
  inputs."nimview-0_3_2".type  = "github";
  inputs."nimview-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_3".dir   = "0_3_3";
  inputs."nimview-0_3_3".owner = "nim-nix-pkgs";
  inputs."nimview-0_3_3".ref   = "master";
  inputs."nimview-0_3_3".repo  = "nimview";
  inputs."nimview-0_3_3".type  = "github";
  inputs."nimview-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_0".dir   = "0_4_0";
  inputs."nimview-0_4_0".owner = "nim-nix-pkgs";
  inputs."nimview-0_4_0".ref   = "master";
  inputs."nimview-0_4_0".repo  = "nimview";
  inputs."nimview-0_4_0".type  = "github";
  inputs."nimview-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_1".dir   = "0_4_1";
  inputs."nimview-0_4_1".owner = "nim-nix-pkgs";
  inputs."nimview-0_4_1".ref   = "master";
  inputs."nimview-0_4_1".repo  = "nimview";
  inputs."nimview-0_4_1".type  = "github";
  inputs."nimview-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_2".dir   = "0_4_2";
  inputs."nimview-0_4_2".owner = "nim-nix-pkgs";
  inputs."nimview-0_4_2".ref   = "master";
  inputs."nimview-0_4_2".repo  = "nimview";
  inputs."nimview-0_4_2".type  = "github";
  inputs."nimview-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-v0_1_1".dir   = "v0_1_1";
  inputs."nimview-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimview-v0_1_1".ref   = "master";
  inputs."nimview-v0_1_1".repo  = "nimview";
  inputs."nimview-v0_1_1".type  = "github";
  inputs."nimview-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-v0_1_2".dir   = "v0_1_2";
  inputs."nimview-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimview-v0_1_2".ref   = "master";
  inputs."nimview-v0_1_2".repo  = "nimview";
  inputs."nimview-v0_1_2".type  = "github";
  inputs."nimview-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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