{
  description = ''Native MQTT client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nmqtt-master".url = "path:./master";
  inputs."nmqtt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-0_1_0".url = "path:./0_1_0";
  inputs."nmqtt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_0".url = "path:./v1_0_0";
  inputs."nmqtt-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_2".url = "path:./v1_0_2";
  inputs."nmqtt-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_3".url = "path:./v1_0_3";
  inputs."nmqtt-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_4".url = "path:./v1_0_4";
  inputs."nmqtt-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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