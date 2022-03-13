{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csvtable-master".dir   = "master";
  inputs."csvtable-master".owner = "nim-nix-pkgs";
  inputs."csvtable-master".ref   = "master";
  inputs."csvtable-master".repo  = "csvtable";
  inputs."csvtable-master".type  = "github";
  inputs."csvtable-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-0_2_0".dir   = "0_2_0";
  inputs."csvtable-0_2_0".owner = "nim-nix-pkgs";
  inputs."csvtable-0_2_0".ref   = "master";
  inputs."csvtable-0_2_0".repo  = "csvtable";
  inputs."csvtable-0_2_0".type  = "github";
  inputs."csvtable-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-0_3_0".dir   = "0_3_0";
  inputs."csvtable-0_3_0".owner = "nim-nix-pkgs";
  inputs."csvtable-0_3_0".ref   = "master";
  inputs."csvtable-0_3_0".repo  = "csvtable";
  inputs."csvtable-0_3_0".type  = "github";
  inputs."csvtable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtable-v0_3_1".dir   = "v0_3_1";
  inputs."csvtable-v0_3_1".owner = "nim-nix-pkgs";
  inputs."csvtable-v0_3_1".ref   = "master";
  inputs."csvtable-v0_3_1".repo  = "csvtable";
  inputs."csvtable-v0_3_1".type  = "github";
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