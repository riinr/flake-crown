{
  description = ''Bindings for picohttpparser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."picohttpparser-master".url = "path:./master";
  inputs."picohttpparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."picohttpparser-0_10_0".url = "path:./0_10_0";
  inputs."picohttpparser-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."picohttpparser-0_9_0".url = "path:./0_9_0";
  inputs."picohttpparser-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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