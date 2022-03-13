{
  description = ''An alternative time library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timestamp-master".dir   = "master";
  inputs."timestamp-master".owner = "nim-nix-pkgs";
  inputs."timestamp-master".ref   = "master";
  inputs."timestamp-master".repo  = "timestamp";
  inputs."timestamp-master".type  = "github";
  inputs."timestamp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_0".dir   = "0_1_0";
  inputs."timestamp-0_1_0".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_0".ref   = "master";
  inputs."timestamp-0_1_0".repo  = "timestamp";
  inputs."timestamp-0_1_0".type  = "github";
  inputs."timestamp-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_1".dir   = "0_1_1";
  inputs."timestamp-0_1_1".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_1".ref   = "master";
  inputs."timestamp-0_1_1".repo  = "timestamp";
  inputs."timestamp-0_1_1".type  = "github";
  inputs."timestamp-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_2".dir   = "0_1_2";
  inputs."timestamp-0_1_2".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_2".ref   = "master";
  inputs."timestamp-0_1_2".repo  = "timestamp";
  inputs."timestamp-0_1_2".type  = "github";
  inputs."timestamp-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_3".dir   = "0_1_3";
  inputs."timestamp-0_1_3".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_3".ref   = "master";
  inputs."timestamp-0_1_3".repo  = "timestamp";
  inputs."timestamp-0_1_3".type  = "github";
  inputs."timestamp-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_4".dir   = "0_1_4";
  inputs."timestamp-0_1_4".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_4".ref   = "master";
  inputs."timestamp-0_1_4".repo  = "timestamp";
  inputs."timestamp-0_1_4".type  = "github";
  inputs."timestamp-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_1_5".dir   = "0_1_5";
  inputs."timestamp-0_1_5".owner = "nim-nix-pkgs";
  inputs."timestamp-0_1_5".ref   = "master";
  inputs."timestamp-0_1_5".repo  = "timestamp";
  inputs."timestamp-0_1_5".type  = "github";
  inputs."timestamp-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_2_0".dir   = "0_2_0";
  inputs."timestamp-0_2_0".owner = "nim-nix-pkgs";
  inputs."timestamp-0_2_0".ref   = "master";
  inputs."timestamp-0_2_0".repo  = "timestamp";
  inputs."timestamp-0_2_0".type  = "github";
  inputs."timestamp-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_2_1".dir   = "0_2_1";
  inputs."timestamp-0_2_1".owner = "nim-nix-pkgs";
  inputs."timestamp-0_2_1".ref   = "master";
  inputs."timestamp-0_2_1".repo  = "timestamp";
  inputs."timestamp-0_2_1".type  = "github";
  inputs."timestamp-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_2_2".dir   = "0_2_2";
  inputs."timestamp-0_2_2".owner = "nim-nix-pkgs";
  inputs."timestamp-0_2_2".ref   = "master";
  inputs."timestamp-0_2_2".repo  = "timestamp";
  inputs."timestamp-0_2_2".type  = "github";
  inputs."timestamp-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_2_3".dir   = "0_2_3";
  inputs."timestamp-0_2_3".owner = "nim-nix-pkgs";
  inputs."timestamp-0_2_3".ref   = "master";
  inputs."timestamp-0_2_3".repo  = "timestamp";
  inputs."timestamp-0_2_3".type  = "github";
  inputs."timestamp-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_3_0".dir   = "0_3_0";
  inputs."timestamp-0_3_0".owner = "nim-nix-pkgs";
  inputs."timestamp-0_3_0".ref   = "master";
  inputs."timestamp-0_3_0".repo  = "timestamp";
  inputs."timestamp-0_3_0".type  = "github";
  inputs."timestamp-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_4_0".dir   = "0_4_0";
  inputs."timestamp-0_4_0".owner = "nim-nix-pkgs";
  inputs."timestamp-0_4_0".ref   = "master";
  inputs."timestamp-0_4_0".repo  = "timestamp";
  inputs."timestamp-0_4_0".type  = "github";
  inputs."timestamp-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_4_1".dir   = "0_4_1";
  inputs."timestamp-0_4_1".owner = "nim-nix-pkgs";
  inputs."timestamp-0_4_1".ref   = "master";
  inputs."timestamp-0_4_1".repo  = "timestamp";
  inputs."timestamp-0_4_1".type  = "github";
  inputs."timestamp-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timestamp-0_4_2".dir   = "0_4_2";
  inputs."timestamp-0_4_2".owner = "nim-nix-pkgs";
  inputs."timestamp-0_4_2".ref   = "master";
  inputs."timestamp-0_4_2".repo  = "timestamp";
  inputs."timestamp-0_4_2".type  = "github";
  inputs."timestamp-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timestamp-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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