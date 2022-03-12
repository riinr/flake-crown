{
  description = ''OpenBSDs pledge(2) for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pledge-master".url = "path:./master";
  inputs."pledge-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_0".url = "path:./v1_0_0";
  inputs."pledge-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_1".url = "path:./v1_0_1";
  inputs."pledge-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_2".url = "path:./v1_0_2";
  inputs."pledge-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_1_0".url = "path:./v1_1_0";
  inputs."pledge-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_1_1".url = "path:./v1_1_1";
  inputs."pledge-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v2_0_0".url = "path:./v2_0_0";
  inputs."pledge-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v2_0_1".url = "path:./v2_0_1";
  inputs."pledge-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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