{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csvtable-master".url = "path:./master";
  inputs."csvtable-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-0_2_0".url = "path:./0_2_0";
  inputs."csvtable-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-0_3_0".url = "path:./0_3_0";
  inputs."csvtable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-v0_3_1".url = "path:./v0_3_1";
  inputs."csvtable-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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