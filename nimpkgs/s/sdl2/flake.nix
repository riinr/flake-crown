{
  description = ''Wrapper for SDL 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sdl2-master".url = "path:./master";
  inputs."sdl2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0".url = "path:./v2_0";
  inputs."sdl2-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_1".url = "path:./v2_0_1";
  inputs."sdl2-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_2".url = "path:./v2_0_2";
  inputs."sdl2-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2-v2_0_3".url = "path:./v2_0_3";
  inputs."sdl2-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}