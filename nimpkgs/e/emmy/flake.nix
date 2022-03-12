{
  description = ''Algebraic structures and related operations for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."emmy-master".url = "path:./master";
  inputs."emmy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emmy-0_1_0".url = "path:./0_1_0";
  inputs."emmy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emmy-0_2_0".url = "path:./0_2_0";
  inputs."emmy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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