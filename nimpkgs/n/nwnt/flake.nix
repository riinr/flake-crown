{
  description = ''GFF <-> NWNT Converter (NeverWinter Nights Text)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwnt-main".url = "path:./main";
  inputs."nwnt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_0_0".url = "path:./v1_0_0";
  inputs."nwnt-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_1_0".url = "path:./v1_1_0";
  inputs."nwnt-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_0".url = "path:./v1_2_0";
  inputs."nwnt-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_1".url = "path:./v1_2_1";
  inputs."nwnt-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_2_2".url = "path:./v1_2_2";
  inputs."nwnt-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_0".url = "path:./v1_3_0";
  inputs."nwnt-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_1".url = "path:./v1_3_1";
  inputs."nwnt-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_2".url = "path:./v1_3_2";
  inputs."nwnt-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwnt-v1_3_3".url = "path:./v1_3_3";
  inputs."nwnt-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwnt-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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