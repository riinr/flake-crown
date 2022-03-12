{
  description = ''Simple WebSocket library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ws-master".url = "path:./master";
  inputs."ws-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_2_3".url = "path:./0_2_3";
  inputs."ws-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_0".url = "path:./0_3_0";
  inputs."ws-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_1".url = "path:./0_3_1";
  inputs."ws-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_2".url = "path:./0_3_2";
  inputs."ws-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_3".url = "path:./0_3_3";
  inputs."ws-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_0".url = "path:./0_4_0";
  inputs."ws-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_1".url = "path:./0_4_1";
  inputs."ws-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_2".url = "path:./0_4_2";
  inputs."ws-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_3".url = "path:./0_4_3";
  inputs."ws-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_4".url = "path:./0_4_4";
  inputs."ws-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_5_0".url = "path:./0_5_0";
  inputs."ws-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-v0_4_0".url = "path:./v0_4_0";
  inputs."ws-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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