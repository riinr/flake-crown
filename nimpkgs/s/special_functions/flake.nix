{
  description = ''Special mathematical functions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."special_functions-master".url = "path:./master";
  inputs."special_functions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."special_functions-v0_1_0".url = "path:./v0_1_0";
  inputs."special_functions-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."special_functions-v0_1_1".url = "path:./v0_1_1";
  inputs."special_functions-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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