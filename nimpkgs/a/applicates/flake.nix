{
  description = ''"pointers" to cached AST that instantiate routines when called'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."applicates-master".url = "path:./master";
  inputs."applicates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-0_1_1".url = "path:./0_1_1";
  inputs."applicates-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_1_0".url = "path:./v0_1_0";
  inputs."applicates-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_1_1".url = "path:./v0_1_1";
  inputs."applicates-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_2_0".url = "path:./v0_2_0";
  inputs."applicates-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_3_0".url = "path:./v0_3_0";
  inputs."applicates-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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