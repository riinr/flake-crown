{
  description = ''Wrapper for SDL 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sdl2-master".dir   = "master";
  inputs."sdl2-master".owner = "nim-nix-pkgs";
  inputs."sdl2-master".ref   = "master";
  inputs."sdl2-master".repo  = "sdl2";
  inputs."sdl2-master".type  = "github";
  inputs."sdl2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0".dir   = "v2_0";
  inputs."sdl2-v2_0".owner = "nim-nix-pkgs";
  inputs."sdl2-v2_0".ref   = "master";
  inputs."sdl2-v2_0".repo  = "sdl2";
  inputs."sdl2-v2_0".type  = "github";
  inputs."sdl2-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_1".dir   = "v2_0_1";
  inputs."sdl2-v2_0_1".owner = "nim-nix-pkgs";
  inputs."sdl2-v2_0_1".ref   = "master";
  inputs."sdl2-v2_0_1".repo  = "sdl2";
  inputs."sdl2-v2_0_1".type  = "github";
  inputs."sdl2-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_2".dir   = "v2_0_2";
  inputs."sdl2-v2_0_2".owner = "nim-nix-pkgs";
  inputs."sdl2-v2_0_2".ref   = "master";
  inputs."sdl2-v2_0_2".repo  = "sdl2";
  inputs."sdl2-v2_0_2".type  = "github";
  inputs."sdl2-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_3".dir   = "v2_0_3";
  inputs."sdl2-v2_0_3".owner = "nim-nix-pkgs";
  inputs."sdl2-v2_0_3".ref   = "master";
  inputs."sdl2-v2_0_3".repo  = "sdl2";
  inputs."sdl2-v2_0_3".type  = "github";
  inputs."sdl2-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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