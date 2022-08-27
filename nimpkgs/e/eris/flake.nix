{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris-trunk".dir   = "trunk";
  inputs."eris-trunk".owner = "nim-nix-pkgs";
  inputs."eris-trunk".ref   = "master";
  inputs."eris-trunk".repo  = "eris";
  inputs."eris-trunk".type  = "github";
  inputs."eris-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_3_0".dir   = "0_3_0";
  inputs."eris-0_3_0".owner = "nim-nix-pkgs";
  inputs."eris-0_3_0".ref   = "master";
  inputs."eris-0_3_0".repo  = "eris";
  inputs."eris-0_3_0".type  = "github";
  inputs."eris-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_0".dir   = "0_4_0";
  inputs."eris-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris-0_4_0".ref   = "master";
  inputs."eris-0_4_0".repo  = "eris";
  inputs."eris-0_4_0".type  = "github";
  inputs."eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_1".dir   = "0_4_1";
  inputs."eris-0_4_1".owner = "nim-nix-pkgs";
  inputs."eris-0_4_1".ref   = "master";
  inputs."eris-0_4_1".repo  = "eris";
  inputs."eris-0_4_1".type  = "github";
  inputs."eris-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_2".dir   = "0_4_2";
  inputs."eris-0_4_2".owner = "nim-nix-pkgs";
  inputs."eris-0_4_2".ref   = "master";
  inputs."eris-0_4_2".repo  = "eris";
  inputs."eris-0_4_2".type  = "github";
  inputs."eris-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220615".dir   = "20220615";
  inputs."eris-20220615".owner = "nim-nix-pkgs";
  inputs."eris-20220615".ref   = "master";
  inputs."eris-20220615".repo  = "eris";
  inputs."eris-20220615".type  = "github";
  inputs."eris-20220615".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220615".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220824".dir   = "20220824";
  inputs."eris-20220824".owner = "nim-nix-pkgs";
  inputs."eris-20220824".ref   = "master";
  inputs."eris-20220824".repo  = "eris";
  inputs."eris-20220824".type  = "github";
  inputs."eris-20220824".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220824".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220825".dir   = "20220825";
  inputs."eris-20220825".owner = "nim-nix-pkgs";
  inputs."eris-20220825".ref   = "master";
  inputs."eris-20220825".repo  = "eris";
  inputs."eris-20220825".type  = "github";
  inputs."eris-20220825".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220825".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-nim-eris-0_4_0".dir   = "nim-eris-0_4_0";
  inputs."eris-nim-eris-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris-nim-eris-0_4_0".ref   = "master";
  inputs."eris-nim-eris-0_4_0".repo  = "eris";
  inputs."eris-nim-eris-0_4_0".type  = "github";
  inputs."eris-nim-eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-nim-eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-nim-eris-0_4_1".dir   = "nim-eris-0_4_1";
  inputs."eris-nim-eris-0_4_1".owner = "nim-nix-pkgs";
  inputs."eris-nim-eris-0_4_1".ref   = "master";
  inputs."eris-nim-eris-0_4_1".repo  = "eris";
  inputs."eris-nim-eris-0_4_1".type  = "github";
  inputs."eris-nim-eris-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-nim-eris-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-nim-eris-0_4_2".dir   = "nim-eris-0_4_2";
  inputs."eris-nim-eris-0_4_2".owner = "nim-nix-pkgs";
  inputs."eris-nim-eris-0_4_2".ref   = "master";
  inputs."eris-nim-eris-0_4_2".repo  = "eris";
  inputs."eris-nim-eris-0_4_2".type  = "github";
  inputs."eris-nim-eris-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-nim-eris-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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