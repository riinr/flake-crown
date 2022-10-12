{
  description = ''Lightweight audio mixer for SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cmixer_sdl2-master.flake = false;
  inputs.src-cmixer_sdl2-master.ref   = "refs/heads/master";
  inputs.src-cmixer_sdl2-master.owner = "rxi";
  inputs.src-cmixer_sdl2-master.repo  = "cmixer_sdl2-nim";
  inputs.src-cmixer_sdl2-master.type  = "github";
  
  inputs."cmixer".owner = "nim-nix-pkgs";
  inputs."cmixer".ref   = "master";
  inputs."cmixer".repo  = "cmixer";
  inputs."cmixer".dir   = "master";
  inputs."cmixer".type  = "github";
  inputs."cmixer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmixer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_4";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cmixer_sdl2-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cmixer_sdl2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}