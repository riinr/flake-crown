{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sdl2_nim-v2_0_14_2-legacy.flake = false;
  inputs.src-sdl2_nim-v2_0_14_2-legacy.ref   = "refs/tags/v2.0.14.2-legacy";
  inputs.src-sdl2_nim-v2_0_14_2-legacy.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_14_2-legacy.repo  = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_14_2-legacy.type  = "github";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".dir   = "3_8_0";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".dir   = "";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v2_0_14_2-legacy"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sdl2_nim-v2_0_14_2-legacy";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}