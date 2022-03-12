{
  description = ''Wrapper for SDL 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sdl2-v2_0_3.flake = false;
  inputs.src-sdl2-v2_0_3.owner = "nim-lang";
  inputs.src-sdl2-v2_0_3.ref   = "refs/tags/v2.0.3";
  inputs.src-sdl2-v2_0_3.repo  = "sdl2";
  inputs.src-sdl2-v2_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sdl2-v2_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sdl2-v2_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}