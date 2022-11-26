{
  description = ''Preserves data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."preserves-devel".dir   = "devel";
  inputs."preserves-devel".owner = "nim-nix-pkgs";
  inputs."preserves-devel".ref   = "master";
  inputs."preserves-devel".repo  = "preserves";
  inputs."preserves-devel".type  = "github";
  inputs."preserves-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-trunk".dir   = "trunk";
  inputs."preserves-trunk".owner = "nim-nix-pkgs";
  inputs."preserves-trunk".ref   = "master";
  inputs."preserves-trunk".repo  = "preserves";
  inputs."preserves-trunk".type  = "github";
  inputs."preserves-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20220625".dir   = "20220625";
  inputs."preserves-20220625".owner = "nim-nix-pkgs";
  inputs."preserves-20220625".ref   = "master";
  inputs."preserves-20220625".repo  = "preserves";
  inputs."preserves-20220625".type  = "github";
  inputs."preserves-20220625".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20220625".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20220709".dir   = "20220709";
  inputs."preserves-20220709".owner = "nim-nix-pkgs";
  inputs."preserves-20220709".ref   = "master";
  inputs."preserves-20220709".repo  = "preserves";
  inputs."preserves-20220709".type  = "github";
  inputs."preserves-20220709".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20220709".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20221013".dir   = "20221013";
  inputs."preserves-20221013".owner = "nim-nix-pkgs";
  inputs."preserves-20221013".ref   = "master";
  inputs."preserves-20221013".repo  = "preserves";
  inputs."preserves-20221013".type  = "github";
  inputs."preserves-20221013".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20221013".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20221020".dir   = "20221020";
  inputs."preserves-20221020".owner = "nim-nix-pkgs";
  inputs."preserves-20221020".ref   = "master";
  inputs."preserves-20221020".repo  = "preserves";
  inputs."preserves-20221020".type  = "github";
  inputs."preserves-20221020".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20221020".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-202210222".dir   = "202210222";
  inputs."preserves-202210222".owner = "nim-nix-pkgs";
  inputs."preserves-202210222".ref   = "master";
  inputs."preserves-202210222".repo  = "preserves";
  inputs."preserves-202210222".type  = "github";
  inputs."preserves-202210222".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-202210222".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20221030".dir   = "20221030";
  inputs."preserves-20221030".owner = "nim-nix-pkgs";
  inputs."preserves-20221030".ref   = "master";
  inputs."preserves-20221030".repo  = "preserves";
  inputs."preserves-20221030".type  = "github";
  inputs."preserves-20221030".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20221030".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-20221102".dir   = "20221102";
  inputs."preserves-20221102".owner = "nim-nix-pkgs";
  inputs."preserves-20221102".ref   = "master";
  inputs."preserves-20221102".repo  = "preserves";
  inputs."preserves-20221102".type  = "github";
  inputs."preserves-20221102".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-20221102".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-3_3_0".dir   = "3_3_0";
  inputs."preserves-3_3_0".owner = "nim-nix-pkgs";
  inputs."preserves-3_3_0".ref   = "master";
  inputs."preserves-3_3_0".repo  = "preserves";
  inputs."preserves-3_3_0".type  = "github";
  inputs."preserves-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-3_3_1".dir   = "3_3_1";
  inputs."preserves-3_3_1".owner = "nim-nix-pkgs";
  inputs."preserves-3_3_1".ref   = "master";
  inputs."preserves-3_3_1".repo  = "preserves";
  inputs."preserves-3_3_1".type  = "github";
  inputs."preserves-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-nim-preserves-3_3_0".dir   = "nim-preserves-3_3_0";
  inputs."preserves-nim-preserves-3_3_0".owner = "nim-nix-pkgs";
  inputs."preserves-nim-preserves-3_3_0".ref   = "master";
  inputs."preserves-nim-preserves-3_3_0".repo  = "preserves";
  inputs."preserves-nim-preserves-3_3_0".type  = "github";
  inputs."preserves-nim-preserves-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-nim-preserves-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-nim-preserves-3_3_1".dir   = "nim-preserves-3_3_1";
  inputs."preserves-nim-preserves-3_3_1".owner = "nim-nix-pkgs";
  inputs."preserves-nim-preserves-3_3_1".ref   = "master";
  inputs."preserves-nim-preserves-3_3_1".repo  = "preserves";
  inputs."preserves-nim-preserves-3_3_1".type  = "github";
  inputs."preserves-nim-preserves-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-nim-preserves-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v0_1_0".dir   = "v0_1_0";
  inputs."preserves-v0_1_0".owner = "nim-nix-pkgs";
  inputs."preserves-v0_1_0".ref   = "master";
  inputs."preserves-v0_1_0".repo  = "preserves";
  inputs."preserves-v0_1_0".type  = "github";
  inputs."preserves-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v0_2_0".dir   = "v0_2_0";
  inputs."preserves-v0_2_0".owner = "nim-nix-pkgs";
  inputs."preserves-v0_2_0".ref   = "master";
  inputs."preserves-v0_2_0".repo  = "preserves";
  inputs."preserves-v0_2_0".type  = "github";
  inputs."preserves-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v1_0_0".dir   = "v1_0_0";
  inputs."preserves-v1_0_0".owner = "nim-nix-pkgs";
  inputs."preserves-v1_0_0".ref   = "master";
  inputs."preserves-v1_0_0".repo  = "preserves";
  inputs."preserves-v1_0_0".type  = "github";
  inputs."preserves-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v1_1_0".dir   = "v1_1_0";
  inputs."preserves-v1_1_0".owner = "nim-nix-pkgs";
  inputs."preserves-v1_1_0".ref   = "master";
  inputs."preserves-v1_1_0".repo  = "preserves";
  inputs."preserves-v1_1_0".type  = "github";
  inputs."preserves-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v2_0_0".dir   = "v2_0_0";
  inputs."preserves-v2_0_0".owner = "nim-nix-pkgs";
  inputs."preserves-v2_0_0".ref   = "master";
  inputs."preserves-v2_0_0".repo  = "preserves";
  inputs."preserves-v2_0_0".type  = "github";
  inputs."preserves-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_0_0".dir   = "v3_0_0";
  inputs."preserves-v3_0_0".owner = "nim-nix-pkgs";
  inputs."preserves-v3_0_0".ref   = "master";
  inputs."preserves-v3_0_0".repo  = "preserves";
  inputs."preserves-v3_0_0".type  = "github";
  inputs."preserves-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_0_1".dir   = "v3_0_1";
  inputs."preserves-v3_0_1".owner = "nim-nix-pkgs";
  inputs."preserves-v3_0_1".ref   = "master";
  inputs."preserves-v3_0_1".repo  = "preserves";
  inputs."preserves-v3_0_1".type  = "github";
  inputs."preserves-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_1_0".dir   = "v3_1_0";
  inputs."preserves-v3_1_0".owner = "nim-nix-pkgs";
  inputs."preserves-v3_1_0".ref   = "master";
  inputs."preserves-v3_1_0".repo  = "preserves";
  inputs."preserves-v3_1_0".type  = "github";
  inputs."preserves-v3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_2_0".dir   = "v3_2_0";
  inputs."preserves-v3_2_0".owner = "nim-nix-pkgs";
  inputs."preserves-v3_2_0".ref   = "master";
  inputs."preserves-v3_2_0".repo  = "preserves";
  inputs."preserves-v3_2_0".type  = "github";
  inputs."preserves-v3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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