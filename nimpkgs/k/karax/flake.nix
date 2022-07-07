{
  description = ''Karax is a framework for developing single page applications in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."karax-master".dir   = "master";
  inputs."karax-master".owner = "nim-nix-pkgs";
  inputs."karax-master".ref   = "master";
  inputs."karax-master".repo  = "karax";
  inputs."karax-master".type  = "github";
  inputs."karax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-0_1_0".dir   = "0_1_0";
  inputs."karax-0_1_0".owner = "nim-nix-pkgs";
  inputs."karax-0_1_0".ref   = "master";
  inputs."karax-0_1_0".repo  = "karax";
  inputs."karax-0_1_0".type  = "github";
  inputs."karax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-0_2_0".dir   = "0_2_0";
  inputs."karax-0_2_0".owner = "nim-nix-pkgs";
  inputs."karax-0_2_0".ref   = "master";
  inputs."karax-0_2_0".repo  = "karax";
  inputs."karax-0_2_0".type  = "github";
  inputs."karax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_0_0".dir   = "1_0_0";
  inputs."karax-1_0_0".owner = "nim-nix-pkgs";
  inputs."karax-1_0_0".ref   = "master";
  inputs."karax-1_0_0".repo  = "karax";
  inputs."karax-1_0_0".type  = "github";
  inputs."karax-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_0".dir   = "1_1_0";
  inputs."karax-1_1_0".owner = "nim-nix-pkgs";
  inputs."karax-1_1_0".ref   = "master";
  inputs."karax-1_1_0".repo  = "karax";
  inputs."karax-1_1_0".type  = "github";
  inputs."karax-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_1".dir   = "1_1_1";
  inputs."karax-1_1_1".owner = "nim-nix-pkgs";
  inputs."karax-1_1_1".ref   = "master";
  inputs."karax-1_1_1".repo  = "karax";
  inputs."karax-1_1_1".type  = "github";
  inputs."karax-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_2".dir   = "1_1_2";
  inputs."karax-1_1_2".owner = "nim-nix-pkgs";
  inputs."karax-1_1_2".ref   = "master";
  inputs."karax-1_1_2".repo  = "karax";
  inputs."karax-1_1_2".type  = "github";
  inputs."karax-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_1_3".dir   = "1_1_3";
  inputs."karax-1_1_3".owner = "nim-nix-pkgs";
  inputs."karax-1_1_3".ref   = "master";
  inputs."karax-1_1_3".repo  = "karax";
  inputs."karax-1_1_3".type  = "github";
  inputs."karax-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_2_1".dir   = "1_2_1";
  inputs."karax-1_2_1".owner = "nim-nix-pkgs";
  inputs."karax-1_2_1".ref   = "master";
  inputs."karax-1_2_1".repo  = "karax";
  inputs."karax-1_2_1".type  = "github";
  inputs."karax-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax-1_2_2".dir   = "1_2_2";
  inputs."karax-1_2_2".owner = "nim-nix-pkgs";
  inputs."karax-1_2_2".ref   = "master";
  inputs."karax-1_2_2".repo  = "karax";
  inputs."karax-1_2_2".type  = "github";
  inputs."karax-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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