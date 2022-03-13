{
  description = ''NWSync Repository Management utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwsync-master".dir   = "master";
  inputs."nwsync-master".owner = "nim-nix-pkgs";
  inputs."nwsync-master".ref   = "master";
  inputs."nwsync-master".repo  = "nwsync";
  inputs."nwsync-master".type  = "github";
  inputs."nwsync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_0".dir   = "0_1_0";
  inputs."nwsync-0_1_0".owner = "nim-nix-pkgs";
  inputs."nwsync-0_1_0".ref   = "master";
  inputs."nwsync-0_1_0".repo  = "nwsync";
  inputs."nwsync-0_1_0".type  = "github";
  inputs."nwsync-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_1".dir   = "0_1_1";
  inputs."nwsync-0_1_1".owner = "nim-nix-pkgs";
  inputs."nwsync-0_1_1".ref   = "master";
  inputs."nwsync-0_1_1".repo  = "nwsync";
  inputs."nwsync-0_1_1".type  = "github";
  inputs."nwsync-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_2".dir   = "0_1_2";
  inputs."nwsync-0_1_2".owner = "nim-nix-pkgs";
  inputs."nwsync-0_1_2".ref   = "master";
  inputs."nwsync-0_1_2".repo  = "nwsync";
  inputs."nwsync-0_1_2".type  = "github";
  inputs."nwsync-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_3".dir   = "0_1_3";
  inputs."nwsync-0_1_3".owner = "nim-nix-pkgs";
  inputs."nwsync-0_1_3".ref   = "master";
  inputs."nwsync-0_1_3".repo  = "nwsync";
  inputs."nwsync-0_1_3".type  = "github";
  inputs."nwsync-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_0".dir   = "0_2_0";
  inputs."nwsync-0_2_0".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_0".ref   = "master";
  inputs."nwsync-0_2_0".repo  = "nwsync";
  inputs."nwsync-0_2_0".type  = "github";
  inputs."nwsync-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_1".dir   = "0_2_1";
  inputs."nwsync-0_2_1".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_1".ref   = "master";
  inputs."nwsync-0_2_1".repo  = "nwsync";
  inputs."nwsync-0_2_1".type  = "github";
  inputs."nwsync-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_2".dir   = "0_2_2";
  inputs."nwsync-0_2_2".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_2".ref   = "master";
  inputs."nwsync-0_2_2".repo  = "nwsync";
  inputs."nwsync-0_2_2".type  = "github";
  inputs."nwsync-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_3".dir   = "0_2_3";
  inputs."nwsync-0_2_3".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_3".ref   = "master";
  inputs."nwsync-0_2_3".repo  = "nwsync";
  inputs."nwsync-0_2_3".type  = "github";
  inputs."nwsync-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_4".dir   = "0_2_4";
  inputs."nwsync-0_2_4".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_4".ref   = "master";
  inputs."nwsync-0_2_4".repo  = "nwsync";
  inputs."nwsync-0_2_4".type  = "github";
  inputs."nwsync-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_5".dir   = "0_2_5";
  inputs."nwsync-0_2_5".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_5".ref   = "master";
  inputs."nwsync-0_2_5".repo  = "nwsync";
  inputs."nwsync-0_2_5".type  = "github";
  inputs."nwsync-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_6".dir   = "0_2_6";
  inputs."nwsync-0_2_6".owner = "nim-nix-pkgs";
  inputs."nwsync-0_2_6".ref   = "master";
  inputs."nwsync-0_2_6".repo  = "nwsync";
  inputs."nwsync-0_2_6".type  = "github";
  inputs."nwsync-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_0".dir   = "0_3_0";
  inputs."nwsync-0_3_0".owner = "nim-nix-pkgs";
  inputs."nwsync-0_3_0".ref   = "master";
  inputs."nwsync-0_3_0".repo  = "nwsync";
  inputs."nwsync-0_3_0".type  = "github";
  inputs."nwsync-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_1".dir   = "0_3_1";
  inputs."nwsync-0_3_1".owner = "nim-nix-pkgs";
  inputs."nwsync-0_3_1".ref   = "master";
  inputs."nwsync-0_3_1".repo  = "nwsync";
  inputs."nwsync-0_3_1".type  = "github";
  inputs."nwsync-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_2".dir   = "0_3_2";
  inputs."nwsync-0_3_2".owner = "nim-nix-pkgs";
  inputs."nwsync-0_3_2".ref   = "master";
  inputs."nwsync-0_3_2".repo  = "nwsync";
  inputs."nwsync-0_3_2".type  = "github";
  inputs."nwsync-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_0".dir   = "0_4_0";
  inputs."nwsync-0_4_0".owner = "nim-nix-pkgs";
  inputs."nwsync-0_4_0".ref   = "master";
  inputs."nwsync-0_4_0".repo  = "nwsync";
  inputs."nwsync-0_4_0".type  = "github";
  inputs."nwsync-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_1".dir   = "0_4_1";
  inputs."nwsync-0_4_1".owner = "nim-nix-pkgs";
  inputs."nwsync-0_4_1".ref   = "master";
  inputs."nwsync-0_4_1".repo  = "nwsync";
  inputs."nwsync-0_4_1".type  = "github";
  inputs."nwsync-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_2".dir   = "0_4_2";
  inputs."nwsync-0_4_2".owner = "nim-nix-pkgs";
  inputs."nwsync-0_4_2".ref   = "master";
  inputs."nwsync-0_4_2".repo  = "nwsync";
  inputs."nwsync-0_4_2".type  = "github";
  inputs."nwsync-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_3".dir   = "0_4_3";
  inputs."nwsync-0_4_3".owner = "nim-nix-pkgs";
  inputs."nwsync-0_4_3".ref   = "master";
  inputs."nwsync-0_4_3".repo  = "nwsync";
  inputs."nwsync-0_4_3".type  = "github";
  inputs."nwsync-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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