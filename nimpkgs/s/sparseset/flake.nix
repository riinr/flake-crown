{
  description = ''Sparsets for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sparseset-main".dir   = "main";
  inputs."sparseset-main".owner = "nim-nix-pkgs";
  inputs."sparseset-main".ref   = "master";
  inputs."sparseset-main".repo  = "sparseset";
  inputs."sparseset-main".type  = "github";
  inputs."sparseset-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_1_0".dir   = "v0_1_0";
  inputs."sparseset-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_1_0".ref   = "master";
  inputs."sparseset-v0_1_0".repo  = "sparseset";
  inputs."sparseset-v0_1_0".type  = "github";
  inputs."sparseset-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_3_0".dir   = "v0_3_0";
  inputs."sparseset-v0_3_0".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_3_0".ref   = "master";
  inputs."sparseset-v0_3_0".repo  = "sparseset";
  inputs."sparseset-v0_3_0".type  = "github";
  inputs."sparseset-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_3_1".dir   = "v0_3_1";
  inputs."sparseset-v0_3_1".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_3_1".ref   = "master";
  inputs."sparseset-v0_3_1".repo  = "sparseset";
  inputs."sparseset-v0_3_1".type  = "github";
  inputs."sparseset-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_3_2".dir   = "v0_3_2";
  inputs."sparseset-v0_3_2".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_3_2".ref   = "master";
  inputs."sparseset-v0_3_2".repo  = "sparseset";
  inputs."sparseset-v0_3_2".type  = "github";
  inputs."sparseset-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_4_0".dir   = "v0_4_0";
  inputs."sparseset-v0_4_0".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_4_0".ref   = "master";
  inputs."sparseset-v0_4_0".repo  = "sparseset";
  inputs."sparseset-v0_4_0".type  = "github";
  inputs."sparseset-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_5_0".dir   = "v0_5_0";
  inputs."sparseset-v0_5_0".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_5_0".ref   = "master";
  inputs."sparseset-v0_5_0".repo  = "sparseset";
  inputs."sparseset-v0_5_0".type  = "github";
  inputs."sparseset-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sparseset-v0_6_0".dir   = "v0_6_0";
  inputs."sparseset-v0_6_0".owner = "nim-nix-pkgs";
  inputs."sparseset-v0_6_0".ref   = "master";
  inputs."sparseset-v0_6_0".repo  = "sparseset";
  inputs."sparseset-v0_6_0".type  = "github";
  inputs."sparseset-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparseset-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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