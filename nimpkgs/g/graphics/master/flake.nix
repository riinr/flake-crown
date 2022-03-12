{
  description = ''Graphics module for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-graphics-master.flake = false;
  inputs.src-graphics-master.owner = "nim-lang";
  inputs.src-graphics-master.ref   = "refs/heads/master";
  inputs.src-graphics-master.repo  = "graphics";
  inputs.src-graphics-master.type  = "github";
  
  inputs."sdl1".dir   = "nimpkgs/s/sdl1";
  inputs."sdl1".owner = "riinr";
  inputs."sdl1".ref   = "flake-pinning";
  inputs."sdl1".repo  = "flake-nimble";
  inputs."sdl1".type  = "github";
  inputs."sdl1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-graphics-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-graphics-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}