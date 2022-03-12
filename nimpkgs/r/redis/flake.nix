{
  description = ''official redis client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redis-master".url = "path:./master";
  inputs."redis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redis-v0_3_0".url = "path:./v0_3_0";
  inputs."redis-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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