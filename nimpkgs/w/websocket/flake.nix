{
  description = ''websockets for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."websocket-master".url = "path:./master";
  inputs."websocket-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_1_0".url = "path:./0_1_0";
  inputs."websocket-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_1_1".url = "path:./0_1_1";
  inputs."websocket-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_2_0".url = "path:./0_2_0";
  inputs."websocket-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_2_1".url = "path:./0_2_1";
  inputs."websocket-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_0".url = "path:./0_3_0";
  inputs."websocket-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_1".url = "path:./0_3_1";
  inputs."websocket-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_2".url = "path:./0_3_2";
  inputs."websocket-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_3".url = "path:./0_3_3";
  inputs."websocket-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_4".url = "path:./0_3_4";
  inputs."websocket-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_5".url = "path:./0_3_5";
  inputs."websocket-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_6".url = "path:./0_3_6";
  inputs."websocket-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_0".url = "path:./0_4_0";
  inputs."websocket-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_1".url = "path:./0_4_1";
  inputs."websocket-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_2".url = "path:./0_4_2";
  inputs."websocket-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_5_0".url = "path:./0_5_0";
  inputs."websocket-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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