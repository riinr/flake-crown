{
  description = ''Useful synchronization primitives'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sync-master".url = "path:./master";
  inputs."sync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_1_0".url = "path:./v0_1_0";
  inputs."sync-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_2_0".url = "path:./v0_2_0";
  inputs."sync-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_3_0".url = "path:./v0_3_0";
  inputs."sync-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_4_0".url = "path:./v0_4_0";
  inputs."sync-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_5_0".url = "path:./v0_5_0";
  inputs."sync-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_6_0".url = "path:./v0_6_0";
  inputs."sync-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_7_0".url = "path:./v0_7_0";
  inputs."sync-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v0_9_0".url = "path:./v0_9_0";
  inputs."sync-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_0_0".url = "path:./v1_0_0";
  inputs."sync-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_1_0".url = "path:./v1_1_0";
  inputs."sync-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_2_0".url = "path:./v1_2_0";
  inputs."sync-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_3_0".url = "path:./v1_3_0";
  inputs."sync-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_4_0".url = "path:./v1_4_0";
  inputs."sync-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sync-v1_5_0".url = "path:./v1_5_0";
  inputs."sync-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sync-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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