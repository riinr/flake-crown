{
  description = ''A very simple micro web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mike-master".url = "path:./master";
  inputs."mike-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_0_0".url = "path:./1_0_0";
  inputs."mike-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_1_0".url = "path:./1_1_0";
  inputs."mike-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_2_0".url = "path:./1_2_0";
  inputs."mike-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mike-1_2_1".url = "path:./1_2_1";
  inputs."mike-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mike-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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