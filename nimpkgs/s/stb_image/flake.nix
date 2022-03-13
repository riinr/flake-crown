{
  description = ''A wrapper for stb_image and stb_image_write.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stb_image-master".dir   = "master";
  inputs."stb_image-master".owner = "nim-nix-pkgs";
  inputs."stb_image-master".ref   = "master";
  inputs."stb_image-master".repo  = "stb_image";
  inputs."stb_image-master".type  = "github";
  inputs."stb_image-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_1".dir   = "1_1";
  inputs."stb_image-1_1".owner = "nim-nix-pkgs";
  inputs."stb_image-1_1".ref   = "master";
  inputs."stb_image-1_1".repo  = "stb_image";
  inputs."stb_image-1_1".type  = "github";
  inputs."stb_image-1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_2".dir   = "1_2";
  inputs."stb_image-1_2".owner = "nim-nix-pkgs";
  inputs."stb_image-1_2".ref   = "master";
  inputs."stb_image-1_2".repo  = "stb_image";
  inputs."stb_image-1_2".type  = "github";
  inputs."stb_image-1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_3".dir   = "1_3";
  inputs."stb_image-1_3".owner = "nim-nix-pkgs";
  inputs."stb_image-1_3".ref   = "master";
  inputs."stb_image-1_3".repo  = "stb_image";
  inputs."stb_image-1_3".type  = "github";
  inputs."stb_image-1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_4".dir   = "1_4";
  inputs."stb_image-1_4".owner = "nim-nix-pkgs";
  inputs."stb_image-1_4".ref   = "master";
  inputs."stb_image-1_4".repo  = "stb_image";
  inputs."stb_image-1_4".type  = "github";
  inputs."stb_image-1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_5".dir   = "1_5";
  inputs."stb_image-1_5".owner = "nim-nix-pkgs";
  inputs."stb_image-1_5".ref   = "master";
  inputs."stb_image-1_5".repo  = "stb_image";
  inputs."stb_image-1_5".type  = "github";
  inputs."stb_image-1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_6".dir   = "1_6";
  inputs."stb_image-1_6".owner = "nim-nix-pkgs";
  inputs."stb_image-1_6".ref   = "master";
  inputs."stb_image-1_6".repo  = "stb_image";
  inputs."stb_image-1_6".type  = "github";
  inputs."stb_image-1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_0".dir   = "2_0";
  inputs."stb_image-2_0".owner = "nim-nix-pkgs";
  inputs."stb_image-2_0".ref   = "master";
  inputs."stb_image-2_0".repo  = "stb_image";
  inputs."stb_image-2_0".type  = "github";
  inputs."stb_image-2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_1".dir   = "2_1";
  inputs."stb_image-2_1".owner = "nim-nix-pkgs";
  inputs."stb_image-2_1".ref   = "master";
  inputs."stb_image-2_1".repo  = "stb_image";
  inputs."stb_image-2_1".type  = "github";
  inputs."stb_image-2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_2".dir   = "2_2";
  inputs."stb_image-2_2".owner = "nim-nix-pkgs";
  inputs."stb_image-2_2".ref   = "master";
  inputs."stb_image-2_2".repo  = "stb_image";
  inputs."stb_image-2_2".type  = "github";
  inputs."stb_image-2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_3".dir   = "2_3";
  inputs."stb_image-2_3".owner = "nim-nix-pkgs";
  inputs."stb_image-2_3".ref   = "master";
  inputs."stb_image-2_3".repo  = "stb_image";
  inputs."stb_image-2_3".type  = "github";
  inputs."stb_image-2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_4".dir   = "2_4";
  inputs."stb_image-2_4".owner = "nim-nix-pkgs";
  inputs."stb_image-2_4".ref   = "master";
  inputs."stb_image-2_4".repo  = "stb_image";
  inputs."stb_image-2_4".type  = "github";
  inputs."stb_image-2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_5".dir   = "2_5";
  inputs."stb_image-2_5".owner = "nim-nix-pkgs";
  inputs."stb_image-2_5".ref   = "master";
  inputs."stb_image-2_5".repo  = "stb_image";
  inputs."stb_image-2_5".type  = "github";
  inputs."stb_image-2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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