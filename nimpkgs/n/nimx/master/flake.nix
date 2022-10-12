{
  description = ''GUI framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimx-master.flake = false;
  inputs.src-nimx-master.ref   = "refs/heads/master";
  inputs.src-nimx-master.owner = "yglukhov";
  inputs.src-nimx-master.repo  = "nimx";
  inputs.src-nimx-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_4";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".dir   = "1_2_6";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl".owner = "nim-nix-pkgs";
  inputs."nimsl".ref   = "master";
  inputs."nimsl".repo  = "nimsl";
  inputs."nimsl".dir   = "v0_3_3";
  inputs."nimsl".type  = "github";
  inputs."nimsl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim".owner = "nim-nix-pkgs";
  inputs."jnim".ref   = "master";
  inputs."jnim".repo  = "jnim";
  inputs."jnim".dir   = "v0_5_1";
  inputs."jnim".type  = "github";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler".owner = "nim-nix-pkgs";
  inputs."closure_compiler".ref   = "master";
  inputs."closure_compiler".repo  = "closure_compiler";
  inputs."closure_compiler".dir   = "v0_3_5";
  inputs."closure_compiler".type  = "github";
  inputs."closure_compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plists".owner = "nim-nix-pkgs";
  inputs."plists".ref   = "master";
  inputs."plists".repo  = "plists";
  inputs."plists".dir   = "master";
  inputs."plists".type  = "github";
  inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant".owner = "nim-nix-pkgs";
  inputs."variant".ref   = "master";
  inputs."variant".repo  = "variant";
  inputs."variant".dir   = "v0_2_12";
  inputs."variant".type  = "github";
  inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kiwi".owner = "nim-nix-pkgs";
  inputs."kiwi".ref   = "master";
  inputs."kiwi".repo  = "kiwi";
  inputs."kiwi".dir   = "master";
  inputs."kiwi".type  = "github";
  inputs."kiwi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-ttf".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-ttf".ref   = "master";
  inputs."github-yglukhov-ttf".repo  = "github-yglukhov-ttf";
  inputs."github-yglukhov-ttf".dir   = "0_2_12";
  inputs."github-yglukhov-ttf".type  = "github";
  inputs."github-yglukhov-ttf".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-ttf".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-async_http_request".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-async_http_request".ref   = "master";
  inputs."github-yglukhov-async_http_request".repo  = "github-yglukhov-async_http_request";
  inputs."github-yglukhov-async_http_request".dir   = "master";
  inputs."github-yglukhov-async_http_request".type  = "github";
  inputs."github-yglukhov-async_http_request".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-async_http_request".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".owner = "nim-nix-pkgs";
  inputs."jsbind".ref   = "master";
  inputs."jsbind".repo  = "jsbind";
  inputs."jsbind".dir   = "master";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect_packer".owner = "nim-nix-pkgs";
  inputs."rect_packer".ref   = "master";
  inputs."rect_packer".repo  = "rect_packer";
  inputs."rect_packer".dir   = "master";
  inputs."rect_packer".type  = "github";
  inputs."rect_packer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect_packer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."os_files".owner = "nim-nix-pkgs";
  inputs."os_files".ref   = "master";
  inputs."os_files".repo  = "os_files";
  inputs."os_files".dir   = "master";
  inputs."os_files".type  = "github";
  inputs."os_files".inputs.nixpkgs.follows = "nixpkgs";
  inputs."os_files".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-tormund-nester".owner = "nim-nix-pkgs";
  inputs."github-tormund-nester".ref   = "master";
  inputs."github-tormund-nester".repo  = "github-tormund-nester";
  inputs."github-tormund-nester".dir   = "master";
  inputs."github-tormund-nester".type  = "github";
  inputs."github-tormund-nester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-tormund-nester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwebp".owner = "nim-nix-pkgs";
  inputs."nimwebp".ref   = "master";
  inputs."nimwebp".repo  = "nimwebp";
  inputs."nimwebp".dir   = "master";
  inputs."nimwebp".type  = "github";
  inputs."nimwebp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwebp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimx-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}