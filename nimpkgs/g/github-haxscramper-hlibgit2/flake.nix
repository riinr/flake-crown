{
  description = ''Nim wrapper for libgit2 library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hlibgit2-master".dir   = "master";
  inputs."hlibgit2-master".owner = "nim-nix-pkgs";
  inputs."hlibgit2-master".ref   = "master";
  inputs."hlibgit2-master".repo  = "hlibgit2";
  inputs."hlibgit2-master".type  = "github";
  inputs."hlibgit2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_1".dir   = "0_1_1";
  inputs."hlibgit2-0_1_1".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_1".ref   = "master";
  inputs."hlibgit2-0_1_1".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_1".type  = "github";
  inputs."hlibgit2-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_2".dir   = "0_1_2";
  inputs."hlibgit2-0_1_2".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_2".ref   = "master";
  inputs."hlibgit2-0_1_2".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_2".type  = "github";
  inputs."hlibgit2-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_3".dir   = "0_1_3";
  inputs."hlibgit2-0_1_3".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_3".ref   = "master";
  inputs."hlibgit2-0_1_3".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_3".type  = "github";
  inputs."hlibgit2-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_4".dir   = "0_1_4";
  inputs."hlibgit2-0_1_4".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_4".ref   = "master";
  inputs."hlibgit2-0_1_4".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_4".type  = "github";
  inputs."hlibgit2-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_5".dir   = "0_1_5";
  inputs."hlibgit2-0_1_5".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_5".ref   = "master";
  inputs."hlibgit2-0_1_5".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_5".type  = "github";
  inputs."hlibgit2-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hlibgit2-0_1_6".dir   = "0_1_6";
  inputs."hlibgit2-0_1_6".owner = "nim-nix-pkgs";
  inputs."hlibgit2-0_1_6".ref   = "master";
  inputs."hlibgit2-0_1_6".repo  = "hlibgit2";
  inputs."hlibgit2-0_1_6".type  = "github";
  inputs."hlibgit2-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hlibgit2-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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