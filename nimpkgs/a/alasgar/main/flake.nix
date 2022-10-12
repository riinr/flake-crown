{
  description = ''Game Engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alasgar-main.flake = false;
  inputs.src-alasgar-main.ref   = "refs/heads/main";
  inputs.src-alasgar-main.owner = "abisxir";
  inputs.src-alasgar-main.repo  = "alasgar";
  inputs.src-alasgar-main.type  = "github";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_4";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_7";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stbimage".owner = "nim-nix-pkgs";
  inputs."stbimage".ref   = "master";
  inputs."stbimage".repo  = "stbimage";
  inputs."stbimage".dir   = "";
  inputs."stbimage".type  = "github";
  inputs."stbimage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stbimage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim".owner = "nim-nix-pkgs";
  inputs."jnim".ref   = "master";
  inputs."jnim".repo  = "jnim";
  inputs."jnim".dir   = "v0_5_1";
  inputs."jnim".type  = "github";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-android".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-android".ref   = "master";
  inputs."github-yglukhov-android".repo  = "github-yglukhov-android";
  inputs."github-yglukhov-android".dir   = "master";
  inputs."github-yglukhov-android".type  = "github";
  inputs."github-yglukhov-android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."darwin".owner = "nim-nix-pkgs";
  inputs."darwin".ref   = "master";
  inputs."darwin".repo  = "darwin";
  inputs."darwin".dir   = "master";
  inputs."darwin".type  = "github";
  inputs."darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alasgar-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-alasgar-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}