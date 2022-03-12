{
  description = ''Pipe operator for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pipe-master".url = "path:./master";
  inputs."pipe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipe-v0_1_0".url = "path:./v0_1_0";
  inputs."pipe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipe-v0_1_1".url = "path:./v0_1_1";
  inputs."pipe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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