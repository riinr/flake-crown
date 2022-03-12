{
  description = ''pnm is library for PNM (Portable AnyMap).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pnm-develop".url = "path:./develop";
  inputs."pnm-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-master".url = "path:./master";
  inputs."pnm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_0_0".url = "path:./v2_0_0";
  inputs."pnm-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_0_1".url = "path:./v2_0_1";
  inputs."pnm-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_1_0".url = "path:./v2_1_0";
  inputs."pnm-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm-v2_1_1".url = "path:./v2_1_1";
  inputs."pnm-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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