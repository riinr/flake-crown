{
  description = ''Implementation of the Fletcher checksum algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fletcher-master".url = "path:./master";
  inputs."fletcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_1_0".url = "path:./0_1_0";
  inputs."fletcher-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_2_2".url = "path:./0_2_2";
  inputs."fletcher-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_3_0".url = "path:./0_3_0";
  inputs."fletcher-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_3_1".url = "path:./0_3_1";
  inputs."fletcher-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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