{
  description = ''csvql.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csvql-master".url = "path:./master";
  inputs."csvql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-1_0".url = "path:./1_0";
  inputs."csvql-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-2_0_1".url = "path:./2_0_1";
  inputs."csvql-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-2_0v".url = "path:./2_0v";
  inputs."csvql-2_0v".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-2_0v".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-3_0".url = "path:./3_0";
  inputs."csvql-3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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