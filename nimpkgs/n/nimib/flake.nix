{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimib-main".dir   = "main";
  inputs."nimib-main".owner = "nim-nix-pkgs";
  inputs."nimib-main".ref   = "master";
  inputs."nimib-main".repo  = "nimib";
  inputs."nimib-main".type  = "github";
  inputs."nimib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1".dir   = "v0_1";
  inputs."nimib-v0_1".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1".ref   = "master";
  inputs."nimib-v0_1".repo  = "nimib";
  inputs."nimib-v0_1".type  = "github";
  inputs."nimib-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_1".dir   = "v0_1_1";
  inputs."nimib-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_1".ref   = "master";
  inputs."nimib-v0_1_1".repo  = "nimib";
  inputs."nimib-v0_1_1".type  = "github";
  inputs."nimib-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_2".dir   = "v0_1_2";
  inputs."nimib-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_2".ref   = "master";
  inputs."nimib-v0_1_2".repo  = "nimib";
  inputs."nimib-v0_1_2".type  = "github";
  inputs."nimib-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_3".dir   = "v0_1_3";
  inputs."nimib-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_3".ref   = "master";
  inputs."nimib-v0_1_3".repo  = "nimib";
  inputs."nimib-v0_1_3".type  = "github";
  inputs."nimib-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_4".dir   = "v0_1_4";
  inputs."nimib-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_4".ref   = "master";
  inputs."nimib-v0_1_4".repo  = "nimib";
  inputs."nimib-v0_1_4".type  = "github";
  inputs."nimib-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_5".dir   = "v0_1_5";
  inputs."nimib-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_5".ref   = "master";
  inputs."nimib-v0_1_5".repo  = "nimib";
  inputs."nimib-v0_1_5".type  = "github";
  inputs."nimib-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_1_6".dir   = "v0_1_6";
  inputs."nimib-v0_1_6".owner = "nim-nix-pkgs";
  inputs."nimib-v0_1_6".ref   = "master";
  inputs."nimib-v0_1_6".repo  = "nimib";
  inputs."nimib-v0_1_6".type  = "github";
  inputs."nimib-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_0".dir   = "v0_2_0";
  inputs."nimib-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimib-v0_2_0".ref   = "master";
  inputs."nimib-v0_2_0".repo  = "nimib";
  inputs."nimib-v0_2_0".type  = "github";
  inputs."nimib-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_1".dir   = "v0_2_1";
  inputs."nimib-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimib-v0_2_1".ref   = "master";
  inputs."nimib-v0_2_1".repo  = "nimib";
  inputs."nimib-v0_2_1".type  = "github";
  inputs."nimib-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_2".dir   = "v0_2_2";
  inputs."nimib-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nimib-v0_2_2".ref   = "master";
  inputs."nimib-v0_2_2".repo  = "nimib";
  inputs."nimib-v0_2_2".type  = "github";
  inputs."nimib-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_3".dir   = "v0_2_3";
  inputs."nimib-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nimib-v0_2_3".ref   = "master";
  inputs."nimib-v0_2_3".repo  = "nimib";
  inputs."nimib-v0_2_3".type  = "github";
  inputs."nimib-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_2_4".dir   = "v0_2_4";
  inputs."nimib-v0_2_4".owner = "nim-nix-pkgs";
  inputs."nimib-v0_2_4".ref   = "master";
  inputs."nimib-v0_2_4".repo  = "nimib";
  inputs."nimib-v0_2_4".type  = "github";
  inputs."nimib-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_3_0".dir   = "v0_3_0";
  inputs."nimib-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimib-v0_3_0".ref   = "master";
  inputs."nimib-v0_3_0".repo  = "nimib";
  inputs."nimib-v0_3_0".type  = "github";
  inputs."nimib-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_3_1".dir   = "v0_3_1";
  inputs."nimib-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimib-v0_3_1".ref   = "master";
  inputs."nimib-v0_3_1".repo  = "nimib";
  inputs."nimib-v0_3_1".type  = "github";
  inputs."nimib-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimib-v0_3_2".dir   = "v0_3_2";
  inputs."nimib-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimib-v0_3_2".ref   = "master";
  inputs."nimib-v0_3_2".repo  = "nimib";
  inputs."nimib-v0_3_2".type  = "github";
  inputs."nimib-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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