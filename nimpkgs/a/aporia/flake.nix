{
  description = ''A Nim IDE.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aporia-master".url = "path:./master";
  inputs."aporia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1".url = "path:./v0_1";
  inputs."aporia-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1_1".url = "path:./v0_1_1";
  inputs."aporia-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_1_1_0".url = "path:./v0_1_1_0";
  inputs."aporia-v0_1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_0".url = "path:./v0_4_0";
  inputs."aporia-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_1".url = "path:./v0_4_1";
  inputs."aporia-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aporia-v0_4_2".url = "path:./v0_4_2";
  inputs."aporia-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aporia-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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