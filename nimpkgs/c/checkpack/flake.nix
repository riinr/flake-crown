{
  description = ''Tiny library to check if a system package is already installed.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."checkpack-develop".url = "path:./develop";
  inputs."checkpack-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-master".url = "path:./master";
  inputs."checkpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_1_0".url = "path:./0_1_0";
  inputs."checkpack-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_1_1".url = "path:./0_1_1";
  inputs."checkpack-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_2_0".url = "path:./0_2_0";
  inputs."checkpack-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkpack-0_3_0".url = "path:./0_3_0";
  inputs."checkpack-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkpack-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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