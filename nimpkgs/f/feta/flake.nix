{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."feta-main".dir   = "main";
  inputs."feta-main".owner = "nim-nix-pkgs";
  inputs."feta-main".ref   = "master";
  inputs."feta-main".repo  = "feta";
  inputs."feta-main".type  = "github";
  inputs."feta-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_0".dir   = "0_0_0";
  inputs."feta-0_0_0".owner = "nim-nix-pkgs";
  inputs."feta-0_0_0".ref   = "master";
  inputs."feta-0_0_0".repo  = "feta";
  inputs."feta-0_0_0".type  = "github";
  inputs."feta-0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_11".dir   = "0_0_11";
  inputs."feta-0_0_11".owner = "nim-nix-pkgs";
  inputs."feta-0_0_11".ref   = "master";
  inputs."feta-0_0_11".repo  = "feta";
  inputs."feta-0_0_11".type  = "github";
  inputs."feta-0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_12".dir   = "0_0_12";
  inputs."feta-0_0_12".owner = "nim-nix-pkgs";
  inputs."feta-0_0_12".ref   = "master";
  inputs."feta-0_0_12".repo  = "feta";
  inputs."feta-0_0_12".type  = "github";
  inputs."feta-0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_13".dir   = "0_0_13";
  inputs."feta-0_0_13".owner = "nim-nix-pkgs";
  inputs."feta-0_0_13".ref   = "master";
  inputs."feta-0_0_13".repo  = "feta";
  inputs."feta-0_0_13".type  = "github";
  inputs."feta-0_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_14".dir   = "0_0_14";
  inputs."feta-0_0_14".owner = "nim-nix-pkgs";
  inputs."feta-0_0_14".ref   = "master";
  inputs."feta-0_0_14".repo  = "feta";
  inputs."feta-0_0_14".type  = "github";
  inputs."feta-0_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_15".dir   = "0_0_15";
  inputs."feta-0_0_15".owner = "nim-nix-pkgs";
  inputs."feta-0_0_15".ref   = "master";
  inputs."feta-0_0_15".repo  = "feta";
  inputs."feta-0_0_15".type  = "github";
  inputs."feta-0_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_16".dir   = "0_0_16";
  inputs."feta-0_0_16".owner = "nim-nix-pkgs";
  inputs."feta-0_0_16".ref   = "master";
  inputs."feta-0_0_16".repo  = "feta";
  inputs."feta-0_0_16".type  = "github";
  inputs."feta-0_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_17".dir   = "0_0_17";
  inputs."feta-0_0_17".owner = "nim-nix-pkgs";
  inputs."feta-0_0_17".ref   = "master";
  inputs."feta-0_0_17".repo  = "feta";
  inputs."feta-0_0_17".type  = "github";
  inputs."feta-0_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_2".dir   = "0_0_2";
  inputs."feta-0_0_2".owner = "nim-nix-pkgs";
  inputs."feta-0_0_2".ref   = "master";
  inputs."feta-0_0_2".repo  = "feta";
  inputs."feta-0_0_2".type  = "github";
  inputs."feta-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_3".dir   = "0_0_3";
  inputs."feta-0_0_3".owner = "nim-nix-pkgs";
  inputs."feta-0_0_3".ref   = "master";
  inputs."feta-0_0_3".repo  = "feta";
  inputs."feta-0_0_3".type  = "github";
  inputs."feta-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_4".dir   = "0_0_4";
  inputs."feta-0_0_4".owner = "nim-nix-pkgs";
  inputs."feta-0_0_4".ref   = "master";
  inputs."feta-0_0_4".repo  = "feta";
  inputs."feta-0_0_4".type  = "github";
  inputs."feta-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_5".dir   = "0_0_5";
  inputs."feta-0_0_5".owner = "nim-nix-pkgs";
  inputs."feta-0_0_5".ref   = "master";
  inputs."feta-0_0_5".repo  = "feta";
  inputs."feta-0_0_5".type  = "github";
  inputs."feta-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_6".dir   = "0_0_6";
  inputs."feta-0_0_6".owner = "nim-nix-pkgs";
  inputs."feta-0_0_6".ref   = "master";
  inputs."feta-0_0_6".repo  = "feta";
  inputs."feta-0_0_6".type  = "github";
  inputs."feta-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_7".dir   = "0_0_7";
  inputs."feta-0_0_7".owner = "nim-nix-pkgs";
  inputs."feta-0_0_7".ref   = "master";
  inputs."feta-0_0_7".repo  = "feta";
  inputs."feta-0_0_7".type  = "github";
  inputs."feta-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_8".dir   = "0_0_8";
  inputs."feta-0_0_8".owner = "nim-nix-pkgs";
  inputs."feta-0_0_8".ref   = "master";
  inputs."feta-0_0_8".repo  = "feta";
  inputs."feta-0_0_8".type  = "github";
  inputs."feta-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_0_9".dir   = "0_0_9";
  inputs."feta-0_0_9".owner = "nim-nix-pkgs";
  inputs."feta-0_0_9".ref   = "master";
  inputs."feta-0_0_9".repo  = "feta";
  inputs."feta-0_0_9".type  = "github";
  inputs."feta-0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."feta-0_1_0".dir   = "0_1_0";
  inputs."feta-0_1_0".owner = "nim-nix-pkgs";
  inputs."feta-0_1_0".ref   = "master";
  inputs."feta-0_1_0".repo  = "feta";
  inputs."feta-0_1_0".type  = "github";
  inputs."feta-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."feta-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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