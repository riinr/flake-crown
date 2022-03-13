{
  description = ''NES emulator using SDL2, also compiles to JavaScript with emscripten.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimes-master".dir   = "master";
  inputs."nimes-master".owner = "nim-nix-pkgs";
  inputs."nimes-master".ref   = "master";
  inputs."nimes-master".repo  = "nimes";
  inputs."nimes-master".type  = "github";
  inputs."nimes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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