{
  description = ''C Tox core wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."toxcore-master".url = "path:./master";
  inputs."toxcore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-0_4_1".url = "path:./0_4_1";
  inputs."toxcore-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_1_0".url = "path:./v0_1_0";
  inputs."toxcore-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_1_1".url = "path:./v0_1_1";
  inputs."toxcore-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_2_0".url = "path:./v0_2_0";
  inputs."toxcore-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_2_1".url = "path:./v0_2_1";
  inputs."toxcore-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_3_0".url = "path:./v0_3_0";
  inputs."toxcore-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_3_1".url = "path:./v0_3_1";
  inputs."toxcore-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_4_0".url = "path:./v0_4_0";
  inputs."toxcore-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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