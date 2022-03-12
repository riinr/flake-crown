{
  description = ''Collection of Diff stringifications (and reversals)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."diffoutput-master".url = "path:./master";
  inputs."diffoutput-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diffoutput-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diffoutput-v0_1_1".url = "path:./v0_1_1";
  inputs."diffoutput-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diffoutput-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diffoutput-v0_1_2".url = "path:./v0_1_2";
  inputs."diffoutput-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diffoutput-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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