{
  description = ''Another MessagePack implementation written in pure nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."msgpack4nim-master".url = "path:./master";
  inputs."msgpack4nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_2_9".url = "path:./v0_2_9";
  inputs."msgpack4nim-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_3_0".url = "path:./v0_3_0";
  inputs."msgpack4nim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_3_1".url = "path:./v0_3_1";
  inputs."msgpack4nim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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