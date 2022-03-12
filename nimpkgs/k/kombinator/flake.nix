{
  description = ''Kombinator is a tool to generate commands line from parameters combination from a config file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kombinator-develop".url = "path:./develop";
  inputs."kombinator-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-master".url = "path:./master";
  inputs."kombinator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_0".url = "path:./1_0_0";
  inputs."kombinator-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_1".url = "path:./1_0_1";
  inputs."kombinator-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_0_2".url = "path:./1_0_2";
  inputs."kombinator-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_1_0".url = "path:./1_1_0";
  inputs."kombinator-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_2_0".url = "path:./1_2_0";
  inputs."kombinator-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_3_0".url = "path:./1_3_0";
  inputs."kombinator-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kombinator-1_3_1".url = "path:./1_3_1";
  inputs."kombinator-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kombinator-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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