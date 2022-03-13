{
  description = ''A Nim IDE.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aporia-master".dir   = "master";
  inputs."aporia-master".owner = "nim-nix-pkgs";
  inputs."aporia-master".ref   = "master";
  inputs."aporia-master".repo  = "aporia";
  inputs."aporia-master".type  = "github";
  inputs."aporia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1".dir   = "v0_1";
  inputs."aporia-v0_1".owner = "nim-nix-pkgs";
  inputs."aporia-v0_1".ref   = "master";
  inputs."aporia-v0_1".repo  = "aporia";
  inputs."aporia-v0_1".type  = "github";
  inputs."aporia-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1_1".dir   = "v0_1_1";
  inputs."aporia-v0_1_1".owner = "nim-nix-pkgs";
  inputs."aporia-v0_1_1".ref   = "master";
  inputs."aporia-v0_1_1".repo  = "aporia";
  inputs."aporia-v0_1_1".type  = "github";
  inputs."aporia-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1_1_0".dir   = "v0_1_1_0";
  inputs."aporia-v0_1_1_0".owner = "nim-nix-pkgs";
  inputs."aporia-v0_1_1_0".ref   = "master";
  inputs."aporia-v0_1_1_0".repo  = "aporia";
  inputs."aporia-v0_1_1_0".type  = "github";
  inputs."aporia-v0_1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_0".dir   = "v0_4_0";
  inputs."aporia-v0_4_0".owner = "nim-nix-pkgs";
  inputs."aporia-v0_4_0".ref   = "master";
  inputs."aporia-v0_4_0".repo  = "aporia";
  inputs."aporia-v0_4_0".type  = "github";
  inputs."aporia-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_1".dir   = "v0_4_1";
  inputs."aporia-v0_4_1".owner = "nim-nix-pkgs";
  inputs."aporia-v0_4_1".ref   = "master";
  inputs."aporia-v0_4_1".repo  = "aporia";
  inputs."aporia-v0_4_1".type  = "github";
  inputs."aporia-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_2".dir   = "v0_4_2";
  inputs."aporia-v0_4_2".owner = "nim-nix-pkgs";
  inputs."aporia-v0_4_2".ref   = "master";
  inputs."aporia-v0_4_2".repo  = "aporia";
  inputs."aporia-v0_4_2".type  = "github";
  inputs."aporia-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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