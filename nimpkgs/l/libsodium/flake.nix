{
  description = ''libsodium wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libsodium-master".dir   = "master";
  inputs."libsodium-master".owner = "nim-nix-pkgs";
  inputs."libsodium-master".ref   = "master";
  inputs."libsodium-master".repo  = "libsodium";
  inputs."libsodium-master".type  = "github";
  inputs."libsodium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_2_2".dir   = "0_2_2";
  inputs."libsodium-0_2_2".owner = "nim-nix-pkgs";
  inputs."libsodium-0_2_2".ref   = "master";
  inputs."libsodium-0_2_2".repo  = "libsodium";
  inputs."libsodium-0_2_2".type  = "github";
  inputs."libsodium-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_3_0".dir   = "0_3_0";
  inputs."libsodium-0_3_0".owner = "nim-nix-pkgs";
  inputs."libsodium-0_3_0".ref   = "master";
  inputs."libsodium-0_3_0".repo  = "libsodium";
  inputs."libsodium-0_3_0".type  = "github";
  inputs."libsodium-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_0".dir   = "0_4_0";
  inputs."libsodium-0_4_0".owner = "nim-nix-pkgs";
  inputs."libsodium-0_4_0".ref   = "master";
  inputs."libsodium-0_4_0".repo  = "libsodium";
  inputs."libsodium-0_4_0".type  = "github";
  inputs."libsodium-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_1".dir   = "0_4_1";
  inputs."libsodium-0_4_1".owner = "nim-nix-pkgs";
  inputs."libsodium-0_4_1".ref   = "master";
  inputs."libsodium-0_4_1".repo  = "libsodium";
  inputs."libsodium-0_4_1".type  = "github";
  inputs."libsodium-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_4_2".dir   = "0_4_2";
  inputs."libsodium-0_4_2".owner = "nim-nix-pkgs";
  inputs."libsodium-0_4_2".ref   = "master";
  inputs."libsodium-0_4_2".repo  = "libsodium";
  inputs."libsodium-0_4_2".type  = "github";
  inputs."libsodium-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_5_0".dir   = "0_5_0";
  inputs."libsodium-0_5_0".owner = "nim-nix-pkgs";
  inputs."libsodium-0_5_0".ref   = "master";
  inputs."libsodium-0_5_0".repo  = "libsodium";
  inputs."libsodium-0_5_0".type  = "github";
  inputs."libsodium-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_6_0".dir   = "0_6_0";
  inputs."libsodium-0_6_0".owner = "nim-nix-pkgs";
  inputs."libsodium-0_6_0".ref   = "master";
  inputs."libsodium-0_6_0".repo  = "libsodium";
  inputs."libsodium-0_6_0".type  = "github";
  inputs."libsodium-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_7_0".dir   = "0_7_0";
  inputs."libsodium-0_7_0".owner = "nim-nix-pkgs";
  inputs."libsodium-0_7_0".ref   = "master";
  inputs."libsodium-0_7_0".repo  = "libsodium";
  inputs."libsodium-0_7_0".type  = "github";
  inputs."libsodium-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium-0_7_1".dir   = "0_7_1";
  inputs."libsodium-0_7_1".owner = "nim-nix-pkgs";
  inputs."libsodium-0_7_1".ref   = "master";
  inputs."libsodium-0_7_1".repo  = "libsodium";
  inputs."libsodium-0_7_1".type  = "github";
  inputs."libsodium-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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