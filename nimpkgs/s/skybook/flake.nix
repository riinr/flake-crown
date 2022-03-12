{
  description = ''Light weight bookmark manager(delicious alternative)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."skybook-master".url = "path:./master";
  inputs."skybook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0".url = "path:./1_0";
  inputs."skybook-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_1".url = "path:./1_0_1";
  inputs."skybook-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_2".url = "path:./1_0_2";
  inputs."skybook-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_3".url = "path:./1_0_3";
  inputs."skybook-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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