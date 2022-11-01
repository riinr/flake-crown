{
  description = ''Portable and easy Nimscript runner. Nim compiler not needed'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ezscr-master".dir   = "master";
  inputs."ezscr-master".owner = "nim-nix-pkgs";
  inputs."ezscr-master".ref   = "master";
  inputs."ezscr-master".repo  = "ezscr";
  inputs."ezscr-master".type  = "github";
  inputs."ezscr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-1_0_0".dir   = "1_0_0";
  inputs."ezscr-1_0_0".owner = "nim-nix-pkgs";
  inputs."ezscr-1_0_0".ref   = "master";
  inputs."ezscr-1_0_0".repo  = "ezscr";
  inputs."ezscr-1_0_0".type  = "github";
  inputs."ezscr-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-2_0_0".dir   = "2_0_0";
  inputs."ezscr-2_0_0".owner = "nim-nix-pkgs";
  inputs."ezscr-2_0_0".ref   = "master";
  inputs."ezscr-2_0_0".repo  = "ezscr";
  inputs."ezscr-2_0_0".type  = "github";
  inputs."ezscr-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-2_1_0".dir   = "2_1_0";
  inputs."ezscr-2_1_0".owner = "nim-nix-pkgs";
  inputs."ezscr-2_1_0".ref   = "master";
  inputs."ezscr-2_1_0".repo  = "ezscr";
  inputs."ezscr-2_1_0".type  = "github";
  inputs."ezscr-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-2_1_1".dir   = "2_1_1";
  inputs."ezscr-2_1_1".owner = "nim-nix-pkgs";
  inputs."ezscr-2_1_1".ref   = "master";
  inputs."ezscr-2_1_1".repo  = "ezscr";
  inputs."ezscr-2_1_1".type  = "github";
  inputs."ezscr-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_0_0".dir   = "3_0_0";
  inputs."ezscr-3_0_0".owner = "nim-nix-pkgs";
  inputs."ezscr-3_0_0".ref   = "master";
  inputs."ezscr-3_0_0".repo  = "ezscr";
  inputs."ezscr-3_0_0".type  = "github";
  inputs."ezscr-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_1_0".dir   = "3_1_0";
  inputs."ezscr-3_1_0".owner = "nim-nix-pkgs";
  inputs."ezscr-3_1_0".ref   = "master";
  inputs."ezscr-3_1_0".repo  = "ezscr";
  inputs."ezscr-3_1_0".type  = "github";
  inputs."ezscr-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_1_1".dir   = "3_1_1";
  inputs."ezscr-3_1_1".owner = "nim-nix-pkgs";
  inputs."ezscr-3_1_1".ref   = "master";
  inputs."ezscr-3_1_1".repo  = "ezscr";
  inputs."ezscr-3_1_1".type  = "github";
  inputs."ezscr-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_2_0".dir   = "3_2_0";
  inputs."ezscr-3_2_0".owner = "nim-nix-pkgs";
  inputs."ezscr-3_2_0".ref   = "master";
  inputs."ezscr-3_2_0".repo  = "ezscr";
  inputs."ezscr-3_2_0".type  = "github";
  inputs."ezscr-3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_3_0".dir   = "3_3_0";
  inputs."ezscr-3_3_0".owner = "nim-nix-pkgs";
  inputs."ezscr-3_3_0".ref   = "master";
  inputs."ezscr-3_3_0".repo  = "ezscr";
  inputs."ezscr-3_3_0".type  = "github";
  inputs."ezscr-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_3_1".dir   = "3_3_1";
  inputs."ezscr-3_3_1".owner = "nim-nix-pkgs";
  inputs."ezscr-3_3_1".ref   = "master";
  inputs."ezscr-3_3_1".repo  = "ezscr";
  inputs."ezscr-3_3_1".type  = "github";
  inputs."ezscr-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_4_0".dir   = "3_4_0";
  inputs."ezscr-3_4_0".owner = "nim-nix-pkgs";
  inputs."ezscr-3_4_0".ref   = "master";
  inputs."ezscr-3_4_0".repo  = "ezscr";
  inputs."ezscr-3_4_0".type  = "github";
  inputs."ezscr-3_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-3_4_1".dir   = "3_4_1";
  inputs."ezscr-3_4_1".owner = "nim-nix-pkgs";
  inputs."ezscr-3_4_1".ref   = "master";
  inputs."ezscr-3_4_1".repo  = "ezscr";
  inputs."ezscr-3_4_1".type  = "github";
  inputs."ezscr-3_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-3_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ezscr-4_0_1".dir   = "4_0_1";
  inputs."ezscr-4_0_1".owner = "nim-nix-pkgs";
  inputs."ezscr-4_0_1".ref   = "master";
  inputs."ezscr-4_0_1".repo  = "ezscr";
  inputs."ezscr-4_0_1".type  = "github";
  inputs."ezscr-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ezscr-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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