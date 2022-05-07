{
  description = ''Zero-wrapping C imports in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."futhark-master".dir   = "master";
  inputs."futhark-master".owner = "nim-nix-pkgs";
  inputs."futhark-master".ref   = "master";
  inputs."futhark-master".repo  = "futhark";
  inputs."futhark-master".type  = "github";
  inputs."futhark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_3_0".dir   = "v0_3_0";
  inputs."futhark-v0_3_0".owner = "nim-nix-pkgs";
  inputs."futhark-v0_3_0".ref   = "master";
  inputs."futhark-v0_3_0".repo  = "futhark";
  inputs."futhark-v0_3_0".type  = "github";
  inputs."futhark-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_3_1".dir   = "v0_3_1";
  inputs."futhark-v0_3_1".owner = "nim-nix-pkgs";
  inputs."futhark-v0_3_1".ref   = "master";
  inputs."futhark-v0_3_1".repo  = "futhark";
  inputs."futhark-v0_3_1".type  = "github";
  inputs."futhark-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_4_0".dir   = "v0_4_0";
  inputs."futhark-v0_4_0".owner = "nim-nix-pkgs";
  inputs."futhark-v0_4_0".ref   = "master";
  inputs."futhark-v0_4_0".repo  = "futhark";
  inputs."futhark-v0_4_0".type  = "github";
  inputs."futhark-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_5_0".dir   = "v0_5_0";
  inputs."futhark-v0_5_0".owner = "nim-nix-pkgs";
  inputs."futhark-v0_5_0".ref   = "master";
  inputs."futhark-v0_5_0".repo  = "futhark";
  inputs."futhark-v0_5_0".type  = "github";
  inputs."futhark-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_5_1".dir   = "v0_5_1";
  inputs."futhark-v0_5_1".owner = "nim-nix-pkgs";
  inputs."futhark-v0_5_1".ref   = "master";
  inputs."futhark-v0_5_1".repo  = "futhark";
  inputs."futhark-v0_5_1".type  = "github";
  inputs."futhark-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."futhark-v0_6_1".dir   = "v0_6_1";
  inputs."futhark-v0_6_1".owner = "nim-nix-pkgs";
  inputs."futhark-v0_6_1".ref   = "master";
  inputs."futhark-v0_6_1".repo  = "futhark";
  inputs."futhark-v0_6_1".type  = "github";
  inputs."futhark-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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