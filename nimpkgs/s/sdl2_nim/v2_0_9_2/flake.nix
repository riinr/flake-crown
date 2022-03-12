{
  description = ''Wrapper of the SDL 2 library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sdl2_nim-v2_0_9_2.flake = false;
  inputs.src-sdl2_nim-v2_0_9_2.owner = "Vladar4";
  inputs.src-sdl2_nim-v2_0_9_2.ref   = "refs/tags/v2.0.9.2";
  inputs.src-sdl2_nim-v2_0_9_2.repo  = "sdl2_nim";
  inputs.src-sdl2_nim-v2_0_9_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2_nim-v2_0_9_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sdl2_nim-v2_0_9_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}