{
  description = ''Client and server database and networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wavecore-master".dir   = "master";
  inputs."wavecore-master".owner = "nim-nix-pkgs";
  inputs."wavecore-master".ref   = "master";
  inputs."wavecore-master".repo  = "wavecore";
  inputs."wavecore-master".type  = "github";
  inputs."wavecore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_1_0".dir   = "0_1_0";
  inputs."wavecore-0_1_0".owner = "nim-nix-pkgs";
  inputs."wavecore-0_1_0".ref   = "master";
  inputs."wavecore-0_1_0".repo  = "wavecore";
  inputs."wavecore-0_1_0".type  = "github";
  inputs."wavecore-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_1_1".dir   = "0_1_1";
  inputs."wavecore-0_1_1".owner = "nim-nix-pkgs";
  inputs."wavecore-0_1_1".ref   = "master";
  inputs."wavecore-0_1_1".repo  = "wavecore";
  inputs."wavecore-0_1_1".type  = "github";
  inputs."wavecore-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_0".dir   = "0_2_0";
  inputs."wavecore-0_2_0".owner = "nim-nix-pkgs";
  inputs."wavecore-0_2_0".ref   = "master";
  inputs."wavecore-0_2_0".repo  = "wavecore";
  inputs."wavecore-0_2_0".type  = "github";
  inputs."wavecore-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_1".dir   = "0_2_1";
  inputs."wavecore-0_2_1".owner = "nim-nix-pkgs";
  inputs."wavecore-0_2_1".ref   = "master";
  inputs."wavecore-0_2_1".repo  = "wavecore";
  inputs."wavecore-0_2_1".type  = "github";
  inputs."wavecore-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_2".dir   = "0_2_2";
  inputs."wavecore-0_2_2".owner = "nim-nix-pkgs";
  inputs."wavecore-0_2_2".ref   = "master";
  inputs."wavecore-0_2_2".repo  = "wavecore";
  inputs."wavecore-0_2_2".type  = "github";
  inputs."wavecore-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_3".dir   = "0_2_3";
  inputs."wavecore-0_2_3".owner = "nim-nix-pkgs";
  inputs."wavecore-0_2_3".ref   = "master";
  inputs."wavecore-0_2_3".repo  = "wavecore";
  inputs."wavecore-0_2_3".type  = "github";
  inputs."wavecore-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_0".dir   = "0_3_0";
  inputs."wavecore-0_3_0".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_0".ref   = "master";
  inputs."wavecore-0_3_0".repo  = "wavecore";
  inputs."wavecore-0_3_0".type  = "github";
  inputs."wavecore-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_1".dir   = "0_3_1";
  inputs."wavecore-0_3_1".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_1".ref   = "master";
  inputs."wavecore-0_3_1".repo  = "wavecore";
  inputs."wavecore-0_3_1".type  = "github";
  inputs."wavecore-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_2".dir   = "0_3_2";
  inputs."wavecore-0_3_2".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_2".ref   = "master";
  inputs."wavecore-0_3_2".repo  = "wavecore";
  inputs."wavecore-0_3_2".type  = "github";
  inputs."wavecore-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_3".dir   = "0_3_3";
  inputs."wavecore-0_3_3".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_3".ref   = "master";
  inputs."wavecore-0_3_3".repo  = "wavecore";
  inputs."wavecore-0_3_3".type  = "github";
  inputs."wavecore-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_4".dir   = "0_3_4";
  inputs."wavecore-0_3_4".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_4".ref   = "master";
  inputs."wavecore-0_3_4".repo  = "wavecore";
  inputs."wavecore-0_3_4".type  = "github";
  inputs."wavecore-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_5".dir   = "0_3_5";
  inputs."wavecore-0_3_5".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_5".ref   = "master";
  inputs."wavecore-0_3_5".repo  = "wavecore";
  inputs."wavecore-0_3_5".type  = "github";
  inputs."wavecore-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_6".dir   = "0_3_6";
  inputs."wavecore-0_3_6".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_6".ref   = "master";
  inputs."wavecore-0_3_6".repo  = "wavecore";
  inputs."wavecore-0_3_6".type  = "github";
  inputs."wavecore-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_7".dir   = "0_3_7";
  inputs."wavecore-0_3_7".owner = "nim-nix-pkgs";
  inputs."wavecore-0_3_7".ref   = "master";
  inputs."wavecore-0_3_7".repo  = "wavecore";
  inputs."wavecore-0_3_7".type  = "github";
  inputs."wavecore-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_0".dir   = "0_4_0";
  inputs."wavecore-0_4_0".owner = "nim-nix-pkgs";
  inputs."wavecore-0_4_0".ref   = "master";
  inputs."wavecore-0_4_0".repo  = "wavecore";
  inputs."wavecore-0_4_0".type  = "github";
  inputs."wavecore-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_1".dir   = "0_4_1";
  inputs."wavecore-0_4_1".owner = "nim-nix-pkgs";
  inputs."wavecore-0_4_1".ref   = "master";
  inputs."wavecore-0_4_1".repo  = "wavecore";
  inputs."wavecore-0_4_1".type  = "github";
  inputs."wavecore-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_2".dir   = "0_4_2";
  inputs."wavecore-0_4_2".owner = "nim-nix-pkgs";
  inputs."wavecore-0_4_2".ref   = "master";
  inputs."wavecore-0_4_2".repo  = "wavecore";
  inputs."wavecore-0_4_2".type  = "github";
  inputs."wavecore-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_3".dir   = "0_4_3";
  inputs."wavecore-0_4_3".owner = "nim-nix-pkgs";
  inputs."wavecore-0_4_3".ref   = "master";
  inputs."wavecore-0_4_3".repo  = "wavecore";
  inputs."wavecore-0_4_3".type  = "github";
  inputs."wavecore-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_5_0".dir   = "0_5_0";
  inputs."wavecore-0_5_0".owner = "nim-nix-pkgs";
  inputs."wavecore-0_5_0".ref   = "master";
  inputs."wavecore-0_5_0".repo  = "wavecore";
  inputs."wavecore-0_5_0".type  = "github";
  inputs."wavecore-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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