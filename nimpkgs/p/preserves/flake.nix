{
  description = ''Preserves data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."preserves-trunk".dir   = "trunk";
  inputs."preserves-trunk".owner = "nim-nix-pkgs";
  inputs."preserves-trunk".ref   = "master";
  inputs."preserves-trunk".repo  = "preserves";
  inputs."preserves-trunk".type  = "github";
  inputs."preserves-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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