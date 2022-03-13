{
  description = ''High-level and low-level wrapper for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opengl-master".dir   = "master";
  inputs."opengl-master".owner = "nim-nix-pkgs";
  inputs."opengl-master".ref   = "master";
  inputs."opengl-master".repo  = "opengl";
  inputs."opengl-master".type  = "github";
  inputs."opengl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_0".dir   = "1_0";
  inputs."opengl-1_0".owner = "nim-nix-pkgs";
  inputs."opengl-1_0".ref   = "master";
  inputs."opengl-1_0".repo  = "opengl";
  inputs."opengl-1_0".type  = "github";
  inputs."opengl-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_0_1".dir   = "1_0_1";
  inputs."opengl-1_0_1".owner = "nim-nix-pkgs";
  inputs."opengl-1_0_1".ref   = "master";
  inputs."opengl-1_0_1".repo  = "opengl";
  inputs."opengl-1_0_1".type  = "github";
  inputs."opengl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_1_0".dir   = "1_1_0";
  inputs."opengl-1_1_0".owner = "nim-nix-pkgs";
  inputs."opengl-1_1_0".ref   = "master";
  inputs."opengl-1_1_0".repo  = "opengl";
  inputs."opengl-1_1_0".type  = "github";
  inputs."opengl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_0".dir   = "1_2_0";
  inputs."opengl-1_2_0".owner = "nim-nix-pkgs";
  inputs."opengl-1_2_0".ref   = "master";
  inputs."opengl-1_2_0".repo  = "opengl";
  inputs."opengl-1_2_0".type  = "github";
  inputs."opengl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_3".dir   = "1_2_3";
  inputs."opengl-1_2_3".owner = "nim-nix-pkgs";
  inputs."opengl-1_2_3".ref   = "master";
  inputs."opengl-1_2_3".repo  = "opengl";
  inputs."opengl-1_2_3".type  = "github";
  inputs."opengl-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_4".dir   = "1_2_4";
  inputs."opengl-1_2_4".owner = "nim-nix-pkgs";
  inputs."opengl-1_2_4".ref   = "master";
  inputs."opengl-1_2_4".repo  = "opengl";
  inputs."opengl-1_2_4".type  = "github";
  inputs."opengl-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_5".dir   = "1_2_5";
  inputs."opengl-1_2_5".owner = "nim-nix-pkgs";
  inputs."opengl-1_2_5".ref   = "master";
  inputs."opengl-1_2_5".repo  = "opengl";
  inputs."opengl-1_2_5".type  = "github";
  inputs."opengl-1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_6".dir   = "1_2_6";
  inputs."opengl-1_2_6".owner = "nim-nix-pkgs";
  inputs."opengl-1_2_6".ref   = "master";
  inputs."opengl-1_2_6".repo  = "opengl";
  inputs."opengl-1_2_6".type  = "github";
  inputs."opengl-1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-v1_2_2".dir   = "v1_2_2";
  inputs."opengl-v1_2_2".owner = "nim-nix-pkgs";
  inputs."opengl-v1_2_2".ref   = "master";
  inputs."opengl-v1_2_2".repo  = "opengl";
  inputs."opengl-v1_2_2".type  = "github";
  inputs."opengl-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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