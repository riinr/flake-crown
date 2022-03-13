{
  description = ''Native MQTT client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nmqtt-master".dir   = "master";
  inputs."nmqtt-master".owner = "nim-nix-pkgs";
  inputs."nmqtt-master".ref   = "master";
  inputs."nmqtt-master".repo  = "nmqtt";
  inputs."nmqtt-master".type  = "github";
  inputs."nmqtt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-0_1_0".dir   = "0_1_0";
  inputs."nmqtt-0_1_0".owner = "nim-nix-pkgs";
  inputs."nmqtt-0_1_0".ref   = "master";
  inputs."nmqtt-0_1_0".repo  = "nmqtt";
  inputs."nmqtt-0_1_0".type  = "github";
  inputs."nmqtt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_0".dir   = "v1_0_0";
  inputs."nmqtt-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nmqtt-v1_0_0".ref   = "master";
  inputs."nmqtt-v1_0_0".repo  = "nmqtt";
  inputs."nmqtt-v1_0_0".type  = "github";
  inputs."nmqtt-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_2".dir   = "v1_0_2";
  inputs."nmqtt-v1_0_2".owner = "nim-nix-pkgs";
  inputs."nmqtt-v1_0_2".ref   = "master";
  inputs."nmqtt-v1_0_2".repo  = "nmqtt";
  inputs."nmqtt-v1_0_2".type  = "github";
  inputs."nmqtt-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_3".dir   = "v1_0_3";
  inputs."nmqtt-v1_0_3".owner = "nim-nix-pkgs";
  inputs."nmqtt-v1_0_3".ref   = "master";
  inputs."nmqtt-v1_0_3".repo  = "nmqtt";
  inputs."nmqtt-v1_0_3".type  = "github";
  inputs."nmqtt-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmqtt-v1_0_4".dir   = "v1_0_4";
  inputs."nmqtt-v1_0_4".owner = "nim-nix-pkgs";
  inputs."nmqtt-v1_0_4".ref   = "master";
  inputs."nmqtt-v1_0_4".repo  = "nmqtt";
  inputs."nmqtt-v1_0_4".type  = "github";
  inputs."nmqtt-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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