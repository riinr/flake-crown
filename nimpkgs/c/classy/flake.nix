{
  description = ''typeclasses for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."classy-master".url = "path:./master";
  inputs."classy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_1".url = "path:./v0_0_1";
  inputs."classy-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_2".url = "path:./v0_0_2";
  inputs."classy-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_3".url = "path:./v0_0_3";
  inputs."classy-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_4".url = "path:./v0_0_4";
  inputs."classy-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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