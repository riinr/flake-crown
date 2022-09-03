{
  description = ''A 2D|3D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-frag-master.flake = false;
  inputs.src-frag-master.ref   = "refs/heads/master";
  inputs.src-frag-master.owner = "fragworks";
  inputs.src-frag-master.repo  = "frag";
  inputs.src-frag-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_3";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".dir   = "2_5";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-android".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-android".ref   = "master";
  inputs."github-yglukhov-android".repo  = "github-yglukhov-android";
  inputs."github-yglukhov-android".dir   = "master";
  inputs."github-yglukhov-android".type  = "github";
  inputs."github-yglukhov-android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".dir   = "master";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-fragworks-chipmunk7".owner = "nim-nix-pkgs";
  inputs."github-fragworks-chipmunk7".ref   = "master";
  inputs."github-fragworks-chipmunk7".repo  = "github-fragworks-chipmunk7";
  inputs."github-fragworks-chipmunk7".dir   = "v0_3_0";
  inputs."github-fragworks-chipmunk7".type  = "github";
  inputs."github-fragworks-chipmunk7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-fragworks-chipmunk7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bgfxdotnim".owner = "nim-nix-pkgs";
  inputs."bgfxdotnim".ref   = "master";
  inputs."bgfxdotnim".repo  = "bgfxdotnim";
  inputs."bgfxdotnim".dir   = "source";
  inputs."bgfxdotnim".type  = "github";
  inputs."bgfxdotnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bgfxdotnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-zacharycarter-bgfxextrasdotnim".owner = "nim-nix-pkgs";
  inputs."github-zacharycarter-bgfxextrasdotnim".ref   = "master";
  inputs."github-zacharycarter-bgfxextrasdotnim".repo  = "github-zacharycarter-bgfxextrasdotnim";
  inputs."github-zacharycarter-bgfxextrasdotnim".dir   = "master";
  inputs."github-zacharycarter-bgfxextrasdotnim".type  = "github";
  inputs."github-zacharycarter-bgfxextrasdotnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-zacharycarter-bgfxextrasdotnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sound".owner = "nim-nix-pkgs";
  inputs."sound".ref   = "master";
  inputs."sound".repo  = "sound";
  inputs."sound".dir   = "source";
  inputs."sound".type  = "github";
  inputs."sound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-zacharycarter-nuklear".owner = "nim-nix-pkgs";
  inputs."github-zacharycarter-nuklear".ref   = "master";
  inputs."github-zacharycarter-nuklear".repo  = "github-zacharycarter-nuklear";
  inputs."github-zacharycarter-nuklear".dir   = "master";
  inputs."github-zacharycarter-nuklear".type  = "github";
  inputs."github-zacharycarter-nuklear".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-zacharycarter-nuklear".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-zacharycarter-nvg".owner = "nim-nix-pkgs";
  inputs."github-zacharycarter-nvg".ref   = "master";
  inputs."github-zacharycarter-nvg".repo  = "github-zacharycarter-nvg";
  inputs."github-zacharycarter-nvg".dir   = "master";
  inputs."github-zacharycarter-nvg".type  = "github";
  inputs."github-zacharycarter-nvg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-zacharycarter-nvg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".dir   = "source";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-zacharycarter-nimassimp".owner = "nim-nix-pkgs";
  inputs."github-zacharycarter-nimassimp".ref   = "master";
  inputs."github-zacharycarter-nimassimp".repo  = "github-zacharycarter-nimassimp";
  inputs."github-zacharycarter-nimassimp".dir   = "master";
  inputs."github-zacharycarter-nimassimp".type  = "github";
  inputs."github-zacharycarter-nimassimp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-zacharycarter-nimassimp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-frag-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-frag-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}