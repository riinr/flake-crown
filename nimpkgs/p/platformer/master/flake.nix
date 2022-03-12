{
  description = ''Writing a 2D Platform Game in Nim with SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-platformer-master.flake = false;
  inputs.src-platformer-master.owner = "def-";
  inputs.src-platformer-master.ref   = "refs/heads/master";
  inputs.src-platformer-master.repo  = "nim-platformer";
  inputs.src-platformer-master.type  = "github";
  
  inputs."sdl2".dir   = "nimpkgs/s/sdl2";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".ref   = "flake-pinning";
  inputs."sdl2".repo  = "flake-nimble";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strfmt".dir   = "nimpkgs/s/strfmt";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".ref   = "flake-pinning";
  inputs."strfmt".repo  = "flake-nimble";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."basic2d".dir   = "nimpkgs/b/basic2d";
  inputs."basic2d".owner = "riinr";
  inputs."basic2d".ref   = "flake-pinning";
  inputs."basic2d".repo  = "flake-nimble";
  inputs."basic2d".type  = "github";
  inputs."basic2d".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basic2d".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-platformer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-platformer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}