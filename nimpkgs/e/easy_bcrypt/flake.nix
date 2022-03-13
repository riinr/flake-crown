{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."easy_bcrypt-master".dir   = "master";
  inputs."easy_bcrypt-master".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-master".ref   = "master";
  inputs."easy_bcrypt-master".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-master".type  = "github";
  inputs."easy_bcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-1_0_0".dir   = "1_0_0";
  inputs."easy_bcrypt-1_0_0".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-1_0_0".ref   = "master";
  inputs."easy_bcrypt-1_0_0".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-1_0_0".type  = "github";
  inputs."easy_bcrypt-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-1_0_1".dir   = "1_0_1";
  inputs."easy_bcrypt-1_0_1".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-1_0_1".ref   = "master";
  inputs."easy_bcrypt-1_0_1".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-1_0_1".type  = "github";
  inputs."easy_bcrypt-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_0".dir   = "2_0_0";
  inputs."easy_bcrypt-2_0_0".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-2_0_0".ref   = "master";
  inputs."easy_bcrypt-2_0_0".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-2_0_0".type  = "github";
  inputs."easy_bcrypt-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_1".dir   = "2_0_1";
  inputs."easy_bcrypt-2_0_1".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-2_0_1".ref   = "master";
  inputs."easy_bcrypt-2_0_1".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-2_0_1".type  = "github";
  inputs."easy_bcrypt-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_2".dir   = "2_0_2";
  inputs."easy_bcrypt-2_0_2".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-2_0_2".ref   = "master";
  inputs."easy_bcrypt-2_0_2".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-2_0_2".type  = "github";
  inputs."easy_bcrypt-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_3".dir   = "2_0_3";
  inputs."easy_bcrypt-2_0_3".owner = "nim-nix-pkgs";
  inputs."easy_bcrypt-2_0_3".ref   = "master";
  inputs."easy_bcrypt-2_0_3".repo  = "easy_bcrypt";
  inputs."easy_bcrypt-2_0_3".type  = "github";
  inputs."easy_bcrypt-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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