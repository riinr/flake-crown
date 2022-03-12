{
  description = ''libffi wrapper for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libffi-master".url = "path:./master";
  inputs."libffi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libffi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libffi-1_0_3".url = "path:./1_0_3";
  inputs."libffi-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libffi-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libffi-1_0_4".url = "path:./1_0_4";
  inputs."libffi-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libffi-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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