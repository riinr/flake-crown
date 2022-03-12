{
  description = ''A simple 2D game engine for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgame2-master.flake = false;
  inputs.src-nimgame2-master.owner = "Vladar4";
  inputs.src-nimgame2-master.ref   = "refs/heads/master";
  inputs.src-nimgame2-master.repo  = "nimgame2";
  inputs.src-nimgame2-master.type  = "github";
  
  inputs."sdl2_nim".dir   = "nimpkgs/s/sdl2_nim";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".ref   = "flake-pinning";
  inputs."sdl2_nim".repo  = "flake-nimble";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgame2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}