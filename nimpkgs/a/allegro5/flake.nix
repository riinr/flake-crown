{
  description = ''Wrapper for Allegro version 5.X'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."allegro5-master".url = "path:./master";
  inputs."allegro5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allegro5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allegro5-v1_0".url = "path:./v1_0";
  inputs."allegro5-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allegro5-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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