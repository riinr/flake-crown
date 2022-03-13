{
  description = ''Common unicode operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unicodeplus-master".dir   = "master";
  inputs."unicodeplus-master".owner = "nim-nix-pkgs";
  inputs."unicodeplus-master".ref   = "master";
  inputs."unicodeplus-master".repo  = "unicodeplus";
  inputs."unicodeplus-master".type  = "github";
  inputs."unicodeplus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_1_0".dir   = "v0_1_0";
  inputs."unicodeplus-v0_1_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_1_0".ref   = "master";
  inputs."unicodeplus-v0_1_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_1_0".type  = "github";
  inputs."unicodeplus-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_1_1".dir   = "v0_1_1";
  inputs."unicodeplus-v0_1_1".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_1_1".ref   = "master";
  inputs."unicodeplus-v0_1_1".repo  = "unicodeplus";
  inputs."unicodeplus-v0_1_1".type  = "github";
  inputs."unicodeplus-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_2_0".dir   = "v0_2_0";
  inputs."unicodeplus-v0_2_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_2_0".ref   = "master";
  inputs."unicodeplus-v0_2_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_2_0".type  = "github";
  inputs."unicodeplus-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_0".dir   = "v0_3_0";
  inputs."unicodeplus-v0_3_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_3_0".ref   = "master";
  inputs."unicodeplus-v0_3_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_3_0".type  = "github";
  inputs."unicodeplus-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_1".dir   = "v0_3_1";
  inputs."unicodeplus-v0_3_1".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_3_1".ref   = "master";
  inputs."unicodeplus-v0_3_1".repo  = "unicodeplus";
  inputs."unicodeplus-v0_3_1".type  = "github";
  inputs."unicodeplus-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_3_2".dir   = "v0_3_2";
  inputs."unicodeplus-v0_3_2".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_3_2".ref   = "master";
  inputs."unicodeplus-v0_3_2".repo  = "unicodeplus";
  inputs."unicodeplus-v0_3_2".type  = "github";
  inputs."unicodeplus-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_4_0".dir   = "v0_4_0";
  inputs."unicodeplus-v0_4_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_4_0".ref   = "master";
  inputs."unicodeplus-v0_4_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_4_0".type  = "github";
  inputs."unicodeplus-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_5_0".dir   = "v0_5_0";
  inputs."unicodeplus-v0_5_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_5_0".ref   = "master";
  inputs."unicodeplus-v0_5_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_5_0".type  = "github";
  inputs."unicodeplus-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_5_1".dir   = "v0_5_1";
  inputs."unicodeplus-v0_5_1".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_5_1".ref   = "master";
  inputs."unicodeplus-v0_5_1".repo  = "unicodeplus";
  inputs."unicodeplus-v0_5_1".type  = "github";
  inputs."unicodeplus-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_6_0".dir   = "v0_6_0";
  inputs."unicodeplus-v0_6_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_6_0".ref   = "master";
  inputs."unicodeplus-v0_6_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_6_0".type  = "github";
  inputs."unicodeplus-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus-v0_8_0".dir   = "v0_8_0";
  inputs."unicodeplus-v0_8_0".owner = "nim-nix-pkgs";
  inputs."unicodeplus-v0_8_0".ref   = "master";
  inputs."unicodeplus-v0_8_0".repo  = "unicodeplus";
  inputs."unicodeplus-v0_8_0".type  = "github";
  inputs."unicodeplus-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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