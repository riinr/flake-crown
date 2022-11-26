{
  description = ''nimjson generates nim object definitions from json documents.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimjson-master".dir   = "master";
  inputs."nimjson-master".owner = "nim-nix-pkgs";
  inputs."nimjson-master".ref   = "master";
  inputs."nimjson-master".repo  = "nimjson";
  inputs."nimjson-master".type  = "github";
  inputs."nimjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_0".dir   = "v1_0_0";
  inputs."nimjson-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_0_0".ref   = "master";
  inputs."nimjson-v1_0_0".repo  = "nimjson";
  inputs."nimjson-v1_0_0".type  = "github";
  inputs."nimjson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_1".dir   = "v1_0_1";
  inputs."nimjson-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_0_1".ref   = "master";
  inputs."nimjson-v1_0_1".repo  = "nimjson";
  inputs."nimjson-v1_0_1".type  = "github";
  inputs."nimjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_2".dir   = "v1_0_2";
  inputs."nimjson-v1_0_2".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_0_2".ref   = "master";
  inputs."nimjson-v1_0_2".repo  = "nimjson";
  inputs."nimjson-v1_0_2".type  = "github";
  inputs."nimjson-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_1_0".dir   = "v1_1_0";
  inputs."nimjson-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_1_0".ref   = "master";
  inputs."nimjson-v1_1_0".repo  = "nimjson";
  inputs."nimjson-v1_1_0".type  = "github";
  inputs."nimjson-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_0".dir   = "v1_2_0";
  inputs."nimjson-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_0".ref   = "master";
  inputs."nimjson-v1_2_0".repo  = "nimjson";
  inputs."nimjson-v1_2_0".type  = "github";
  inputs."nimjson-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_1".dir   = "v1_2_1";
  inputs."nimjson-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_1".ref   = "master";
  inputs."nimjson-v1_2_1".repo  = "nimjson";
  inputs."nimjson-v1_2_1".type  = "github";
  inputs."nimjson-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_2".dir   = "v1_2_2";
  inputs."nimjson-v1_2_2".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_2".ref   = "master";
  inputs."nimjson-v1_2_2".repo  = "nimjson";
  inputs."nimjson-v1_2_2".type  = "github";
  inputs."nimjson-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_3".dir   = "v1_2_3";
  inputs."nimjson-v1_2_3".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_3".ref   = "master";
  inputs."nimjson-v1_2_3".repo  = "nimjson";
  inputs."nimjson-v1_2_3".type  = "github";
  inputs."nimjson-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_4".dir   = "v1_2_4";
  inputs."nimjson-v1_2_4".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_4".ref   = "master";
  inputs."nimjson-v1_2_4".repo  = "nimjson";
  inputs."nimjson-v1_2_4".type  = "github";
  inputs."nimjson-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_5".dir   = "v1_2_5";
  inputs."nimjson-v1_2_5".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_5".ref   = "master";
  inputs."nimjson-v1_2_5".repo  = "nimjson";
  inputs."nimjson-v1_2_5".type  = "github";
  inputs."nimjson-v1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_6".dir   = "v1_2_6";
  inputs."nimjson-v1_2_6".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_6".ref   = "master";
  inputs."nimjson-v1_2_6".repo  = "nimjson";
  inputs."nimjson-v1_2_6".type  = "github";
  inputs."nimjson-v1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_7".dir   = "v1_2_7";
  inputs."nimjson-v1_2_7".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_7".ref   = "master";
  inputs."nimjson-v1_2_7".repo  = "nimjson";
  inputs."nimjson-v1_2_7".type  = "github";
  inputs."nimjson-v1_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_8".dir   = "v1_2_8";
  inputs."nimjson-v1_2_8".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_2_8".ref   = "master";
  inputs."nimjson-v1_2_8".repo  = "nimjson";
  inputs."nimjson-v1_2_8".type  = "github";
  inputs."nimjson-v1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_3_0".dir   = "v1_3_0";
  inputs."nimjson-v1_3_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_3_0".ref   = "master";
  inputs."nimjson-v1_3_0".repo  = "nimjson";
  inputs."nimjson-v1_3_0".type  = "github";
  inputs."nimjson-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_3_1".dir   = "v1_3_1";
  inputs."nimjson-v1_3_1".owner = "nim-nix-pkgs";
  inputs."nimjson-v1_3_1".ref   = "master";
  inputs."nimjson-v1_3_1".repo  = "nimjson";
  inputs."nimjson-v1_3_1".type  = "github";
  inputs."nimjson-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v2_0_0".dir   = "v2_0_0";
  inputs."nimjson-v2_0_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v2_0_0".ref   = "master";
  inputs."nimjson-v2_0_0".repo  = "nimjson";
  inputs."nimjson-v2_0_0".type  = "github";
  inputs."nimjson-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v2_0_1".dir   = "v2_0_1";
  inputs."nimjson-v2_0_1".owner = "nim-nix-pkgs";
  inputs."nimjson-v2_0_1".ref   = "master";
  inputs."nimjson-v2_0_1".repo  = "nimjson";
  inputs."nimjson-v2_0_1".type  = "github";
  inputs."nimjson-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v3_0_0".dir   = "v3_0_0";
  inputs."nimjson-v3_0_0".owner = "nim-nix-pkgs";
  inputs."nimjson-v3_0_0".ref   = "master";
  inputs."nimjson-v3_0_0".repo  = "nimjson";
  inputs."nimjson-v3_0_0".type  = "github";
  inputs."nimjson-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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