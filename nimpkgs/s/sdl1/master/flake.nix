{
  description = ''SDL 1.2 wrapper for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sdl1-master.flake = false;
  inputs.src-sdl1-master.owner = "nim-lang";
  inputs.src-sdl1-master.ref   = "refs/heads/master";
  inputs.src-sdl1-master.repo  = "sdl1";
  inputs.src-sdl1-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sdl1-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sdl1-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}