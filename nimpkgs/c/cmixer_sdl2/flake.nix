{
  description = ''Lightweight audio mixer for SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmixer_sdl2-master".dir   = "master";
  inputs."cmixer_sdl2-master".owner = "nim-nix-pkgs";
  inputs."cmixer_sdl2-master".ref   = "master";
  inputs."cmixer_sdl2-master".repo  = "cmixer_sdl2";
  inputs."cmixer_sdl2-master".type  = "github";
  inputs."cmixer_sdl2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmixer_sdl2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}