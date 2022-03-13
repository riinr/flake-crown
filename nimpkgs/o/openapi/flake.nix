{
  description = ''OpenAPI Code Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openapi-master".dir   = "master";
  inputs."openapi-master".owner = "nim-nix-pkgs";
  inputs."openapi-master".ref   = "master";
  inputs."openapi-master".repo  = "openapi";
  inputs."openapi-master".type  = "github";
  inputs."openapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_0".dir   = "1_0_0";
  inputs."openapi-1_0_0".owner = "nim-nix-pkgs";
  inputs."openapi-1_0_0".ref   = "master";
  inputs."openapi-1_0_0".repo  = "openapi";
  inputs."openapi-1_0_0".type  = "github";
  inputs."openapi-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_1".dir   = "1_0_1";
  inputs."openapi-1_0_1".owner = "nim-nix-pkgs";
  inputs."openapi-1_0_1".ref   = "master";
  inputs."openapi-1_0_1".repo  = "openapi";
  inputs."openapi-1_0_1".type  = "github";
  inputs."openapi-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_2".dir   = "1_0_2";
  inputs."openapi-1_0_2".owner = "nim-nix-pkgs";
  inputs."openapi-1_0_2".ref   = "master";
  inputs."openapi-1_0_2".repo  = "openapi";
  inputs."openapi-1_0_2".type  = "github";
  inputs."openapi-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_3".dir   = "1_0_3";
  inputs."openapi-1_0_3".owner = "nim-nix-pkgs";
  inputs."openapi-1_0_3".ref   = "master";
  inputs."openapi-1_0_3".repo  = "openapi";
  inputs."openapi-1_0_3".type  = "github";
  inputs."openapi-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-2_0_0".dir   = "2_0_0";
  inputs."openapi-2_0_0".owner = "nim-nix-pkgs";
  inputs."openapi-2_0_0".ref   = "master";
  inputs."openapi-2_0_0".repo  = "openapi";
  inputs."openapi-2_0_0".type  = "github";
  inputs."openapi-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-2_0_1".dir   = "2_0_1";
  inputs."openapi-2_0_1".owner = "nim-nix-pkgs";
  inputs."openapi-2_0_1".ref   = "master";
  inputs."openapi-2_0_1".repo  = "openapi";
  inputs."openapi-2_0_1".type  = "github";
  inputs."openapi-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_0_0".dir   = "3_0_0";
  inputs."openapi-3_0_0".owner = "nim-nix-pkgs";
  inputs."openapi-3_0_0".ref   = "master";
  inputs."openapi-3_0_0".repo  = "openapi";
  inputs."openapi-3_0_0".type  = "github";
  inputs."openapi-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_0_1".dir   = "3_0_1";
  inputs."openapi-3_0_1".owner = "nim-nix-pkgs";
  inputs."openapi-3_0_1".ref   = "master";
  inputs."openapi-3_0_1".repo  = "openapi";
  inputs."openapi-3_0_1".type  = "github";
  inputs."openapi-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_0".dir   = "3_1_0";
  inputs."openapi-3_1_0".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_0".ref   = "master";
  inputs."openapi-3_1_0".repo  = "openapi";
  inputs."openapi-3_1_0".type  = "github";
  inputs."openapi-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_1".dir   = "3_1_1";
  inputs."openapi-3_1_1".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_1".ref   = "master";
  inputs."openapi-3_1_1".repo  = "openapi";
  inputs."openapi-3_1_1".type  = "github";
  inputs."openapi-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_2".dir   = "3_1_2";
  inputs."openapi-3_1_2".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_2".ref   = "master";
  inputs."openapi-3_1_2".repo  = "openapi";
  inputs."openapi-3_1_2".type  = "github";
  inputs."openapi-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_3".dir   = "3_1_3";
  inputs."openapi-3_1_3".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_3".ref   = "master";
  inputs."openapi-3_1_3".repo  = "openapi";
  inputs."openapi-3_1_3".type  = "github";
  inputs."openapi-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_4".dir   = "3_1_4";
  inputs."openapi-3_1_4".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_4".ref   = "master";
  inputs."openapi-3_1_4".repo  = "openapi";
  inputs."openapi-3_1_4".type  = "github";
  inputs."openapi-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_5".dir   = "3_1_5";
  inputs."openapi-3_1_5".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_5".ref   = "master";
  inputs."openapi-3_1_5".repo  = "openapi";
  inputs."openapi-3_1_5".type  = "github";
  inputs."openapi-3_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_6".dir   = "3_1_6";
  inputs."openapi-3_1_6".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_6".ref   = "master";
  inputs."openapi-3_1_6".repo  = "openapi";
  inputs."openapi-3_1_6".type  = "github";
  inputs."openapi-3_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_7".dir   = "3_1_7";
  inputs."openapi-3_1_7".owner = "nim-nix-pkgs";
  inputs."openapi-3_1_7".ref   = "master";
  inputs."openapi-3_1_7".repo  = "openapi";
  inputs."openapi-3_1_7".type  = "github";
  inputs."openapi-3_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_0".dir   = "3_2_0";
  inputs."openapi-3_2_0".owner = "nim-nix-pkgs";
  inputs."openapi-3_2_0".ref   = "master";
  inputs."openapi-3_2_0".repo  = "openapi";
  inputs."openapi-3_2_0".type  = "github";
  inputs."openapi-3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_1".dir   = "3_2_1";
  inputs."openapi-3_2_1".owner = "nim-nix-pkgs";
  inputs."openapi-3_2_1".ref   = "master";
  inputs."openapi-3_2_1".repo  = "openapi";
  inputs."openapi-3_2_1".type  = "github";
  inputs."openapi-3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_2".dir   = "3_2_2";
  inputs."openapi-3_2_2".owner = "nim-nix-pkgs";
  inputs."openapi-3_2_2".ref   = "master";
  inputs."openapi-3_2_2".repo  = "openapi";
  inputs."openapi-3_2_2".type  = "github";
  inputs."openapi-3_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_3_0".dir   = "3_3_0";
  inputs."openapi-3_3_0".owner = "nim-nix-pkgs";
  inputs."openapi-3_3_0".ref   = "master";
  inputs."openapi-3_3_0".repo  = "openapi";
  inputs."openapi-3_3_0".type  = "github";
  inputs."openapi-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_3_1".dir   = "3_3_1";
  inputs."openapi-3_3_1".owner = "nim-nix-pkgs";
  inputs."openapi-3_3_1".ref   = "master";
  inputs."openapi-3_3_1".repo  = "openapi";
  inputs."openapi-3_3_1".type  = "github";
  inputs."openapi-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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