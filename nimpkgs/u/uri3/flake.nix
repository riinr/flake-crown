{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uri3-master".url = "path:./master";
  inputs."uri3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-0_1_4".url = "path:./0_1_4";
  inputs."uri3-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_1".url = "path:./v0_1_1";
  inputs."uri3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_3".url = "path:./v0_1_3";
  inputs."uri3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_4".url = "path:./v0_1_4";
  inputs."uri3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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