{
  description = ''Support for serialization of objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serializetools-master".dir   = "master";
  inputs."serializetools-master".owner = "nim-nix-pkgs";
  inputs."serializetools-master".ref   = "master";
  inputs."serializetools-master".repo  = "serializetools";
  inputs."serializetools-master".type  = "github";
  inputs."serializetools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_0_0".dir   = "v1_0_0";
  inputs."serializetools-v1_0_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_0_0".ref   = "master";
  inputs."serializetools-v1_0_0".repo  = "serializetools";
  inputs."serializetools-v1_0_0".type  = "github";
  inputs."serializetools-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_1_0".dir   = "v1_1_0";
  inputs."serializetools-v1_1_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_1_0".ref   = "master";
  inputs."serializetools-v1_1_0".repo  = "serializetools";
  inputs."serializetools-v1_1_0".type  = "github";
  inputs."serializetools-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_10_0".dir   = "v1_10_0";
  inputs."serializetools-v1_10_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_10_0".ref   = "master";
  inputs."serializetools-v1_10_0".repo  = "serializetools";
  inputs."serializetools-v1_10_0".type  = "github";
  inputs."serializetools-v1_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_11".dir   = "v1_11";
  inputs."serializetools-v1_11".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_11".ref   = "master";
  inputs."serializetools-v1_11".repo  = "serializetools";
  inputs."serializetools-v1_11".type  = "github";
  inputs."serializetools-v1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_11_0".dir   = "v1_11_0";
  inputs."serializetools-v1_11_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_11_0".ref   = "master";
  inputs."serializetools-v1_11_0".repo  = "serializetools";
  inputs."serializetools-v1_11_0".type  = "github";
  inputs."serializetools-v1_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_0".dir   = "v1_12_0";
  inputs."serializetools-v1_12_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_12_0".ref   = "master";
  inputs."serializetools-v1_12_0".repo  = "serializetools";
  inputs."serializetools-v1_12_0".type  = "github";
  inputs."serializetools-v1_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_1".dir   = "v1_12_1";
  inputs."serializetools-v1_12_1".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_12_1".ref   = "master";
  inputs."serializetools-v1_12_1".repo  = "serializetools";
  inputs."serializetools-v1_12_1".type  = "github";
  inputs."serializetools-v1_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_2".dir   = "v1_12_2";
  inputs."serializetools-v1_12_2".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_12_2".ref   = "master";
  inputs."serializetools-v1_12_2".repo  = "serializetools";
  inputs."serializetools-v1_12_2".type  = "github";
  inputs."serializetools-v1_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_13_0".dir   = "v1_13_0";
  inputs."serializetools-v1_13_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_13_0".ref   = "master";
  inputs."serializetools-v1_13_0".repo  = "serializetools";
  inputs."serializetools-v1_13_0".type  = "github";
  inputs."serializetools-v1_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_0".dir   = "v1_16_0";
  inputs."serializetools-v1_16_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_16_0".ref   = "master";
  inputs."serializetools-v1_16_0".repo  = "serializetools";
  inputs."serializetools-v1_16_0".type  = "github";
  inputs."serializetools-v1_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_1".dir   = "v1_16_1";
  inputs."serializetools-v1_16_1".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_16_1".ref   = "master";
  inputs."serializetools-v1_16_1".repo  = "serializetools";
  inputs."serializetools-v1_16_1".type  = "github";
  inputs."serializetools-v1_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_2".dir   = "v1_16_2";
  inputs."serializetools-v1_16_2".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_16_2".ref   = "master";
  inputs."serializetools-v1_16_2".repo  = "serializetools";
  inputs."serializetools-v1_16_2".type  = "github";
  inputs."serializetools-v1_16_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_2_0".dir   = "v1_2_0";
  inputs."serializetools-v1_2_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_2_0".ref   = "master";
  inputs."serializetools-v1_2_0".repo  = "serializetools";
  inputs."serializetools-v1_2_0".type  = "github";
  inputs."serializetools-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_3_0".dir   = "v1_3_0";
  inputs."serializetools-v1_3_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_3_0".ref   = "master";
  inputs."serializetools-v1_3_0".repo  = "serializetools";
  inputs."serializetools-v1_3_0".type  = "github";
  inputs."serializetools-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_3_1".dir   = "v1_3_1";
  inputs."serializetools-v1_3_1".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_3_1".ref   = "master";
  inputs."serializetools-v1_3_1".repo  = "serializetools";
  inputs."serializetools-v1_3_1".type  = "github";
  inputs."serializetools-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_4_0".dir   = "v1_4_0";
  inputs."serializetools-v1_4_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_4_0".ref   = "master";
  inputs."serializetools-v1_4_0".repo  = "serializetools";
  inputs."serializetools-v1_4_0".type  = "github";
  inputs."serializetools-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_5_0".dir   = "v1_5_0";
  inputs."serializetools-v1_5_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_5_0".ref   = "master";
  inputs."serializetools-v1_5_0".repo  = "serializetools";
  inputs."serializetools-v1_5_0".type  = "github";
  inputs."serializetools-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_5_1".dir   = "v1_5_1";
  inputs."serializetools-v1_5_1".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_5_1".ref   = "master";
  inputs."serializetools-v1_5_1".repo  = "serializetools";
  inputs."serializetools-v1_5_1".type  = "github";
  inputs."serializetools-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_6_0".dir   = "v1_6_0";
  inputs."serializetools-v1_6_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_6_0".ref   = "master";
  inputs."serializetools-v1_6_0".repo  = "serializetools";
  inputs."serializetools-v1_6_0".type  = "github";
  inputs."serializetools-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_9_0".dir   = "v1_9_0";
  inputs."serializetools-v1_9_0".owner = "nim-nix-pkgs";
  inputs."serializetools-v1_9_0".ref   = "master";
  inputs."serializetools-v1_9_0".repo  = "serializetools";
  inputs."serializetools-v1_9_0".type  = "github";
  inputs."serializetools-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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