{
  description = ''SAS compiler'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sas-master".dir   = "master";
  inputs."sas-master".owner = "nim-nix-pkgs";
  inputs."sas-master".ref   = "master";
  inputs."sas-master".repo  = "sas";
  inputs."sas-master".type  = "github";
  inputs."sas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sas-0_1_0".dir   = "0_1_0";
  inputs."sas-0_1_0".owner = "nim-nix-pkgs";
  inputs."sas-0_1_0".ref   = "master";
  inputs."sas-0_1_0".repo  = "sas";
  inputs."sas-0_1_0".type  = "github";
  inputs."sas-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sas-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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