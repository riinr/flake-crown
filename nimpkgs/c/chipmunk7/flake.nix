{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chipmunk7-master".url = "path:./master";
  inputs."chipmunk7-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk7-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chipmunk7-v0_3_0".url = "path:./v0_3_0";
  inputs."chipmunk7-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chipmunk7-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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