{
  description = ''Tools for working with re-frame ClojureScript projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."reframe-master".dir   = "master";
  inputs."reframe-master".owner = "nim-nix-pkgs";
  inputs."reframe-master".ref   = "master";
  inputs."reframe-master".repo  = "reframe";
  inputs."reframe-master".type  = "github";
  inputs."reframe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_1_0".dir   = "0_1_0";
  inputs."reframe-0_1_0".owner = "nim-nix-pkgs";
  inputs."reframe-0_1_0".ref   = "master";
  inputs."reframe-0_1_0".repo  = "reframe";
  inputs."reframe-0_1_0".type  = "github";
  inputs."reframe-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_2_0".dir   = "0_2_0";
  inputs."reframe-0_2_0".owner = "nim-nix-pkgs";
  inputs."reframe-0_2_0".ref   = "master";
  inputs."reframe-0_2_0".repo  = "reframe";
  inputs."reframe-0_2_0".type  = "github";
  inputs."reframe-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_3_0".dir   = "0_3_0";
  inputs."reframe-0_3_0".owner = "nim-nix-pkgs";
  inputs."reframe-0_3_0".ref   = "master";
  inputs."reframe-0_3_0".repo  = "reframe";
  inputs."reframe-0_3_0".type  = "github";
  inputs."reframe-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_3_1".dir   = "0_3_1";
  inputs."reframe-0_3_1".owner = "nim-nix-pkgs";
  inputs."reframe-0_3_1".ref   = "master";
  inputs."reframe-0_3_1".repo  = "reframe";
  inputs."reframe-0_3_1".type  = "github";
  inputs."reframe-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_4_0".dir   = "0_4_0";
  inputs."reframe-0_4_0".owner = "nim-nix-pkgs";
  inputs."reframe-0_4_0".ref   = "master";
  inputs."reframe-0_4_0".repo  = "reframe";
  inputs."reframe-0_4_0".type  = "github";
  inputs."reframe-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_4_1".dir   = "0_4_1";
  inputs."reframe-0_4_1".owner = "nim-nix-pkgs";
  inputs."reframe-0_4_1".ref   = "master";
  inputs."reframe-0_4_1".repo  = "reframe";
  inputs."reframe-0_4_1".type  = "github";
  inputs."reframe-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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