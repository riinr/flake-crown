{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."filetype-main".dir   = "main";
  inputs."filetype-main".owner = "nim-nix-pkgs";
  inputs."filetype-main".ref   = "master";
  inputs."filetype-main".repo  = "filetype";
  inputs."filetype-main".type  = "github";
  inputs."filetype-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_1_0".dir   = "v0_1_0";
  inputs."filetype-v0_1_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_1_0".ref   = "master";
  inputs."filetype-v0_1_0".repo  = "filetype";
  inputs."filetype-v0_1_0".type  = "github";
  inputs."filetype-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_2_0".dir   = "v0_2_0";
  inputs."filetype-v0_2_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_2_0".ref   = "master";
  inputs."filetype-v0_2_0".repo  = "filetype";
  inputs."filetype-v0_2_0".type  = "github";
  inputs."filetype-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_3_0".dir   = "v0_3_0";
  inputs."filetype-v0_3_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_3_0".ref   = "master";
  inputs."filetype-v0_3_0".repo  = "filetype";
  inputs."filetype-v0_3_0".type  = "github";
  inputs."filetype-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_4_0".dir   = "v0_4_0";
  inputs."filetype-v0_4_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_4_0".ref   = "master";
  inputs."filetype-v0_4_0".repo  = "filetype";
  inputs."filetype-v0_4_0".type  = "github";
  inputs."filetype-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_5_0".dir   = "v0_5_0";
  inputs."filetype-v0_5_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_5_0".ref   = "master";
  inputs."filetype-v0_5_0".repo  = "filetype";
  inputs."filetype-v0_5_0".type  = "github";
  inputs."filetype-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_5_1".dir   = "v0_5_1";
  inputs."filetype-v0_5_1".owner = "nim-nix-pkgs";
  inputs."filetype-v0_5_1".ref   = "master";
  inputs."filetype-v0_5_1".repo  = "filetype";
  inputs."filetype-v0_5_1".type  = "github";
  inputs."filetype-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_6_0".dir   = "v0_6_0";
  inputs."filetype-v0_6_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_6_0".ref   = "master";
  inputs."filetype-v0_6_0".repo  = "filetype";
  inputs."filetype-v0_6_0".type  = "github";
  inputs."filetype-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_7_0".dir   = "v0_7_0";
  inputs."filetype-v0_7_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_7_0".ref   = "master";
  inputs."filetype-v0_7_0".repo  = "filetype";
  inputs."filetype-v0_7_0".type  = "github";
  inputs."filetype-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_7_1".dir   = "v0_7_1";
  inputs."filetype-v0_7_1".owner = "nim-nix-pkgs";
  inputs."filetype-v0_7_1".ref   = "master";
  inputs."filetype-v0_7_1".repo  = "filetype";
  inputs."filetype-v0_7_1".type  = "github";
  inputs."filetype-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_8_0".dir   = "v0_8_0";
  inputs."filetype-v0_8_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_8_0".ref   = "master";
  inputs."filetype-v0_8_0".repo  = "filetype";
  inputs."filetype-v0_8_0".type  = "github";
  inputs."filetype-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_8_1".dir   = "v0_8_1";
  inputs."filetype-v0_8_1".owner = "nim-nix-pkgs";
  inputs."filetype-v0_8_1".ref   = "master";
  inputs."filetype-v0_8_1".repo  = "filetype";
  inputs."filetype-v0_8_1".type  = "github";
  inputs."filetype-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_9_0".dir   = "v0_9_0";
  inputs."filetype-v0_9_0".owner = "nim-nix-pkgs";
  inputs."filetype-v0_9_0".ref   = "master";
  inputs."filetype-v0_9_0".repo  = "filetype";
  inputs."filetype-v0_9_0".type  = "github";
  inputs."filetype-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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