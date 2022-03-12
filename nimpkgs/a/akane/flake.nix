{
  description = ''The Nim asynchronous web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."akane-master".url = "path:./master";
  inputs."akane-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-0_2_0".url = "path:./0_2_0";
  inputs."akane-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_0".url = "path:./v0_1_0";
  inputs."akane-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_1".url = "path:./v0_1_1";
  inputs."akane-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_1b".url = "path:./v0_1_1b";
  inputs."akane-v0_1_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_2".url = "path:./v0_1_2";
  inputs."akane-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_3".url = "path:./v0_1_3";
  inputs."akane-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_5".url = "path:./v0_1_5";
  inputs."akane-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_6".url = "path:./v0_1_6";
  inputs."akane-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_7".url = "path:./v0_1_7";
  inputs."akane-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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