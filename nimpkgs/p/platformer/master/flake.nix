{
  description = ''An example 2D platform game with SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-platformer-master.flake = false;
  inputs.src-platformer-master.ref   = "refs/heads/master";
  inputs.src-platformer-master.owner = "def-";
  inputs.src-platformer-master.repo  = "nim-platformer";
  inputs.src-platformer-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_3";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".dir   = "";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."basic2d".owner = "nim-nix-pkgs";
  inputs."basic2d".ref   = "master";
  inputs."basic2d".repo  = "basic2d";
  inputs."basic2d".dir   = "";
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