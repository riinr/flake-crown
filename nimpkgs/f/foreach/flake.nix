{
  description = ''A sugary for loop with syntax for typechecking loop variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."foreach-master".url = "path:./master";
  inputs."foreach-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_0".url = "path:./1_0_0";
  inputs."foreach-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_1".url = "path:./1_0_1";
  inputs."foreach-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach-1_0_2".url = "path:./1_0_2";
  inputs."foreach-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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