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
  
  inputs."eris_utils-0_1_0".dir   = "0_1_0";
  inputs."eris_utils-0_1_0".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_0".ref   = "master";
  inputs."eris_utils-0_1_0".repo  = "eris_utils";
  inputs."eris_utils-0_1_0".type  = "github";
  inputs."eris_utils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_1".dir   = "0_1_1";
  inputs."eris_utils-0_1_1".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_1".ref   = "master";
  inputs."eris_utils-0_1_1".repo  = "eris_utils";
  inputs."eris_utils-0_1_1".type  = "github";
  inputs."eris_utils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_2".dir   = "0_1_2";
  inputs."eris_utils-0_1_2".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_2".ref   = "master";
  inputs."eris_utils-0_1_2".repo  = "eris_utils";
  inputs."eris_utils-0_1_2".type  = "github";
  inputs."eris_utils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_3".dir   = "0_1_3";
  inputs."eris_utils-0_1_3".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_3".ref   = "master";
  inputs."eris_utils-0_1_3".repo  = "eris_utils";
  inputs."eris_utils-0_1_3".type  = "github";
  inputs."eris_utils-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_2_0".dir   = "0_2_0";
  inputs."eris-0_2_0".owner = "nim-nix-pkgs";
  inputs."eris-0_2_0".ref   = "master";
  inputs."eris-0_2_0".repo  = "eris";
  inputs."eris-0_2_0".type  = "github";
  inputs."eris-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."eris_tkrzw-20220518".dir   = "20220518";
  inputs."eris_tkrzw-20220518".owner = "nim-nix-pkgs";
  inputs."eris_tkrzw-20220518".ref   = "master";
  inputs."eris_tkrzw-20220518".repo  = "eris_tkrzw";
  inputs."eris_tkrzw-20220518".type  = "github";
  inputs."eris_tkrzw-20220518".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_tkrzw-20220518".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."eris-20220831".dir   = "20220831";
  inputs."eris-20220831".owner = "nim-nix-pkgs";
  inputs."eris-20220831".ref   = "master";
  inputs."eris-20220831".repo  = "eris";
  inputs."eris-20220831".type  = "github";
  inputs."eris-20220831".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220831".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220902".dir   = "20220902";
  inputs."eris-20220902".owner = "nim-nix-pkgs";
  inputs."eris-20220902".ref   = "master";
  inputs."eris-20220902".repo  = "eris";
  inputs."eris-20220902".type  = "github";
  inputs."eris-20220902".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220902".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220904".dir   = "20220904";
  inputs."eris-20220904".owner = "nim-nix-pkgs";
  inputs."eris-20220904".ref   = "master";
  inputs."eris-20220904".repo  = "eris";
  inputs."eris-20220904".type  = "github";
  inputs."eris-20220904".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220904".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220912".dir   = "20220912";
  inputs."eris-20220912".owner = "nim-nix-pkgs";
  inputs."eris-20220912".ref   = "master";
  inputs."eris-20220912".repo  = "eris";
  inputs."eris-20220912".type  = "github";
  inputs."eris-20220912".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220912".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220913".dir   = "20220913";
  inputs."eris-20220913".owner = "nim-nix-pkgs";
  inputs."eris-20220913".ref   = "master";
  inputs."eris-20220913".repo  = "eris";
  inputs."eris-20220913".type  = "github";
  inputs."eris-20220913".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220913".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220921".dir   = "20220921";
  inputs."eris-20220921".owner = "nim-nix-pkgs";
  inputs."eris-20220921".ref   = "master";
  inputs."eris-20220921".repo  = "eris";
  inputs."eris-20220921".type  = "github";
  inputs."eris-20220921".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220921".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220922".dir   = "20220922";
  inputs."eris-20220922".owner = "nim-nix-pkgs";
  inputs."eris-20220922".ref   = "master";
  inputs."eris-20220922".repo  = "eris";
  inputs."eris-20220922".type  = "github";
  inputs."eris-20220922".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220922".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20220924".dir   = "20220924";
  inputs."eris-20220924".owner = "nim-nix-pkgs";
  inputs."eris-20220924".ref   = "master";
  inputs."eris-20220924".repo  = "eris";
  inputs."eris-20220924".type  = "github";
  inputs."eris-20220924".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20220924".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-20221006".dir   = "20221006";
  inputs."eris-20221006".owner = "nim-nix-pkgs";
  inputs."eris-20221006".ref   = "master";
  inputs."eris-20221006".repo  = "eris";
  inputs."eris-20221006".type  = "github";
  inputs."eris-20221006".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-20221006".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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