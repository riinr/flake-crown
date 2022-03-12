{
  description = ''Nim implementation of user-agent parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uap-master".url = "path:./master";
  inputs."uap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_0".url = "path:./v1_0_0";
  inputs."uap-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_1".url = "path:./v1_0_1";
  inputs."uap-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_2".url = "path:./v1_0_2";
  inputs."uap-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_3".url = "path:./v1_0_3";
  inputs."uap-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_4".url = "path:./v1_0_4";
  inputs."uap-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uap-v1_0_5".url = "path:./v1_0_5";
  inputs."uap-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uap-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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