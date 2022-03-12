{
  description = ''Porting some Python / Kotlin features to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pykot-master".url = "path:./master";
  inputs."pykot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_0".url = "path:./v0_1_0";
  inputs."pykot-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_1".url = "path:./v0_1_1";
  inputs."pykot-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_2".url = "path:./v0_1_2";
  inputs."pykot-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_3".url = "path:./v0_1_3";
  inputs."pykot-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_2_0".url = "path:./v0_2_0";
  inputs."pykot-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_2_1".url = "path:./v0_2_1";
  inputs."pykot-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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