{
  description = ''A 2D|3D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-frag-master.flake = false;
  inputs.src-frag-master.owner = "fragworks";
  inputs.src-frag-master.ref   = "refs/heads/master";
  inputs.src-frag-master.repo  = "frag";
  inputs.src-frag-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/yglukhov/android.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/yglukhov/android.git".ref   = "master";
  inputs."https://github.com/yglukhov/android.git".repo  = "https://github.com/yglukhov/android.git";
  inputs."https://github.com/yglukhov/android.git".type  = "github";
  inputs."https://github.com/yglukhov/android.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/android.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/fragworks/nim-chipmunk.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/fragworks/nim-chipmunk.git".ref   = "master";
  inputs."https://github.com/fragworks/nim-chipmunk.git".repo  = "https://github.com/fragworks/nim-chipmunk.git";
  inputs."https://github.com/fragworks/nim-chipmunk.git".type  = "github";
  inputs."https://github.com/fragworks/nim-chipmunk.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/fragworks/nim-chipmunk.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/zacharycarter/bgfx.nim.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".ref   = "master";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".repo  = "https://github.com/zacharycarter/bgfx.nim.git";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".type  = "github";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/bgfx.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".ref   = "master";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".repo  = "https://github.com/zacharycarter/bgfx.extras.nim.git";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".type  = "github";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/bgfx.extras.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sound".owner = "nim-nix-pkgs";
  inputs."sound".ref   = "master";
  inputs."sound".repo  = "sound";
  inputs."sound".type  = "github";
  inputs."sound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/zacharycarter/nuklear-nim.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".ref   = "master";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".repo  = "https://github.com/zacharycarter/nuklear-nim.git";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".type  = "github";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nuklear-nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/zacharycarter/nanovg.nim.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".ref   = "master";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".repo  = "https://github.com/zacharycarter/nanovg.nim.git";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".type  = "github";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nanovg.nim.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/zacharycarter/nimassimp.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/zacharycarter/nimassimp.git".ref   = "master";
  inputs."https://github.com/zacharycarter/nimassimp.git".repo  = "https://github.com/zacharycarter/nimassimp.git";
  inputs."https://github.com/zacharycarter/nimassimp.git".type  = "github";
  inputs."https://github.com/zacharycarter/nimassimp.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/zacharycarter/nimassimp.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-frag-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-frag-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}