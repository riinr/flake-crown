{
  description = ''Nimble package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimble-master".dir   = "master";
  inputs."nimble-master".owner = "nim-nix-pkgs";
  inputs."nimble-master".ref   = "master";
  inputs."nimble-master".repo  = "nimble";
  inputs."nimble-master".type  = "github";
  inputs."nimble-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_10_0".dir   = "v0_10_0";
  inputs."nimble-v0_10_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_10_0".ref   = "master";
  inputs."nimble-v0_10_0".repo  = "nimble";
  inputs."nimble-v0_10_0".type  = "github";
  inputs."nimble-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_10_2".dir   = "v0_10_2";
  inputs."nimble-v0_10_2".owner = "nim-nix-pkgs";
  inputs."nimble-v0_10_2".ref   = "master";
  inputs."nimble-v0_10_2".repo  = "nimble";
  inputs."nimble-v0_10_2".type  = "github";
  inputs."nimble-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_11_0".dir   = "v0_11_0";
  inputs."nimble-v0_11_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_11_0".ref   = "master";
  inputs."nimble-v0_11_0".repo  = "nimble";
  inputs."nimble-v0_11_0".type  = "github";
  inputs."nimble-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_11_2".dir   = "v0_11_2";
  inputs."nimble-v0_11_2".owner = "nim-nix-pkgs";
  inputs."nimble-v0_11_2".ref   = "master";
  inputs."nimble-v0_11_2".repo  = "nimble";
  inputs."nimble-v0_11_2".type  = "github";
  inputs."nimble-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_11_4".dir   = "v0_11_4";
  inputs."nimble-v0_11_4".owner = "nim-nix-pkgs";
  inputs."nimble-v0_11_4".ref   = "master";
  inputs."nimble-v0_11_4".repo  = "nimble";
  inputs."nimble-v0_11_4".type  = "github";
  inputs."nimble-v0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_12_0".dir   = "v0_12_0";
  inputs."nimble-v0_12_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_12_0".ref   = "master";
  inputs."nimble-v0_12_0".repo  = "nimble";
  inputs."nimble-v0_12_0".type  = "github";
  inputs."nimble-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_13_0".dir   = "v0_13_0";
  inputs."nimble-v0_13_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_13_0".ref   = "master";
  inputs."nimble-v0_13_0".repo  = "nimble";
  inputs."nimble-v0_13_0".type  = "github";
  inputs."nimble-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_13_1".dir   = "v0_13_1";
  inputs."nimble-v0_13_1".owner = "nim-nix-pkgs";
  inputs."nimble-v0_13_1".ref   = "master";
  inputs."nimble-v0_13_1".repo  = "nimble";
  inputs."nimble-v0_13_1".type  = "github";
  inputs."nimble-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_14_0".dir   = "v0_14_0";
  inputs."nimble-v0_14_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_14_0".ref   = "master";
  inputs."nimble-v0_14_0".repo  = "nimble";
  inputs."nimble-v0_14_0".type  = "github";
  inputs."nimble-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."babel-v0_2".dir   = "v0_2";
  inputs."babel-v0_2".owner = "nim-nix-pkgs";
  inputs."babel-v0_2".ref   = "master";
  inputs."babel-v0_2".repo  = "babel";
  inputs."babel-v0_2".type  = "github";
  inputs."babel-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."babel-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."babel-v0_4".dir   = "v0_4";
  inputs."babel-v0_4".owner = "nim-nix-pkgs";
  inputs."babel-v0_4".ref   = "master";
  inputs."babel-v0_4".repo  = "babel";
  inputs."babel-v0_4".type  = "github";
  inputs."babel-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."babel-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_6".dir   = "v0_6";
  inputs."nimble-v0_6".owner = "nim-nix-pkgs";
  inputs."nimble-v0_6".ref   = "master";
  inputs."nimble-v0_6".repo  = "nimble";
  inputs."nimble-v0_6".type  = "github";
  inputs."nimble-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_6_2".dir   = "v0_6_2";
  inputs."nimble-v0_6_2".owner = "nim-nix-pkgs";
  inputs."nimble-v0_6_2".ref   = "master";
  inputs."nimble-v0_6_2".repo  = "nimble";
  inputs."nimble-v0_6_2".type  = "github";
  inputs."nimble-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_6_4".dir   = "v0_6_4";
  inputs."nimble-v0_6_4".owner = "nim-nix-pkgs";
  inputs."nimble-v0_6_4".ref   = "master";
  inputs."nimble-v0_6_4".repo  = "nimble";
  inputs."nimble-v0_6_4".type  = "github";
  inputs."nimble-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_0".dir   = "v0_7_0";
  inputs."nimble-v0_7_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_0".ref   = "master";
  inputs."nimble-v0_7_0".repo  = "nimble";
  inputs."nimble-v0_7_0".type  = "github";
  inputs."nimble-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_10".dir   = "v0_7_10";
  inputs."nimble-v0_7_10".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_10".ref   = "master";
  inputs."nimble-v0_7_10".repo  = "nimble";
  inputs."nimble-v0_7_10".type  = "github";
  inputs."nimble-v0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_2".dir   = "v0_7_2";
  inputs."nimble-v0_7_2".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_2".ref   = "master";
  inputs."nimble-v0_7_2".repo  = "nimble";
  inputs."nimble-v0_7_2".type  = "github";
  inputs."nimble-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_4".dir   = "v0_7_4";
  inputs."nimble-v0_7_4".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_4".ref   = "master";
  inputs."nimble-v0_7_4".repo  = "nimble";
  inputs."nimble-v0_7_4".type  = "github";
  inputs."nimble-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_6".dir   = "v0_7_6";
  inputs."nimble-v0_7_6".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_6".ref   = "master";
  inputs."nimble-v0_7_6".repo  = "nimble";
  inputs."nimble-v0_7_6".type  = "github";
  inputs."nimble-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_7_8".dir   = "v0_7_8";
  inputs."nimble-v0_7_8".owner = "nim-nix-pkgs";
  inputs."nimble-v0_7_8".ref   = "master";
  inputs."nimble-v0_7_8".repo  = "nimble";
  inputs."nimble-v0_7_8".type  = "github";
  inputs."nimble-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_0".dir   = "v0_8_0";
  inputs."nimble-v0_8_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_0".ref   = "master";
  inputs."nimble-v0_8_0".repo  = "nimble";
  inputs."nimble-v0_8_0".type  = "github";
  inputs."nimble-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_10".dir   = "v0_8_10";
  inputs."nimble-v0_8_10".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_10".ref   = "master";
  inputs."nimble-v0_8_10".repo  = "nimble";
  inputs."nimble-v0_8_10".type  = "github";
  inputs."nimble-v0_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_2".dir   = "v0_8_2";
  inputs."nimble-v0_8_2".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_2".ref   = "master";
  inputs."nimble-v0_8_2".repo  = "nimble";
  inputs."nimble-v0_8_2".type  = "github";
  inputs."nimble-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_4".dir   = "v0_8_4";
  inputs."nimble-v0_8_4".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_4".ref   = "master";
  inputs."nimble-v0_8_4".repo  = "nimble";
  inputs."nimble-v0_8_4".type  = "github";
  inputs."nimble-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_6".dir   = "v0_8_6";
  inputs."nimble-v0_8_6".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_6".ref   = "master";
  inputs."nimble-v0_8_6".repo  = "nimble";
  inputs."nimble-v0_8_6".type  = "github";
  inputs."nimble-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_8_8".dir   = "v0_8_8";
  inputs."nimble-v0_8_8".owner = "nim-nix-pkgs";
  inputs."nimble-v0_8_8".ref   = "master";
  inputs."nimble-v0_8_8".repo  = "nimble";
  inputs."nimble-v0_8_8".type  = "github";
  inputs."nimble-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimble-v0_9_0".dir   = "v0_9_0";
  inputs."nimble-v0_9_0".owner = "nim-nix-pkgs";
  inputs."nimble-v0_9_0".ref   = "master";
  inputs."nimble-v0_9_0".repo  = "nimble";
  inputs."nimble-v0_9_0".type  = "github";
  inputs."nimble-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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