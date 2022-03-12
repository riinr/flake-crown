{
  description = ''Sitmo parallel random number generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sitmo-master".url = "path:./master";
  inputs."sitmo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_0".url = "path:./v0_0_0";
  inputs."sitmo-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_1".url = "path:./v0_0_1";
  inputs."sitmo-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_2".url = "path:./v0_0_2";
  inputs."sitmo-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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