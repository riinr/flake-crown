{
  description = ''Renormalization of colloidal charges of polydipserse dispersions using the Poisson-Boltzmann equation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polypbren-master".url = "path:./master";
  inputs."polypbren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4-paper".url = "path:./v0_4-paper";
  inputs."polypbren-v0_4-paper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4-paper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_1".url = "path:./v0_4_1";
  inputs."polypbren-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_2".url = "path:./v0_4_2";
  inputs."polypbren-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren-v0_4_3".url = "path:./v0_4_3";
  inputs."polypbren-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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