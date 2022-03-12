{
  description = ''Nim Z3 theorem prover bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."z3-master".url = "path:./master";
  inputs."z3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_0".url = "path:./v0_1_0";
  inputs."z3-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_1".url = "path:./v0_1_1";
  inputs."z3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_2".url = "path:./v0_1_2";
  inputs."z3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_3".url = "path:./v0_1_3";
  inputs."z3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_4".url = "path:./v0_1_4";
  inputs."z3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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