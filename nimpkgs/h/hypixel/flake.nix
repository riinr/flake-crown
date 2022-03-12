{
  description = ''The Hypixel API, in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hypixel-main".url = "path:./main";
  inputs."hypixel-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_0".url = "path:./v0_2_0";
  inputs."hypixel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_1".url = "path:./v0_2_1";
  inputs."hypixel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_2".url = "path:./v0_2_2";
  inputs."hypixel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_3".url = "path:./v0_2_3";
  inputs."hypixel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_0".url = "path:./v0_3_0";
  inputs."hypixel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_1".url = "path:./v0_3_1";
  inputs."hypixel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_2".url = "path:./v0_3_2";
  inputs."hypixel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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