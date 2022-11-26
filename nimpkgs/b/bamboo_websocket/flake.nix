{
  description = ''This is a simple implementation of a WebSocket server with 100% Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bamboo_websocket-master".dir   = "master";
  inputs."bamboo_websocket-master".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-master".ref   = "master";
  inputs."bamboo_websocket-master".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-master".type  = "github";
  inputs."bamboo_websocket-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_1_0".dir   = "0_1_0";
  inputs."bamboo_websocket-0_1_0".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_1_0".ref   = "master";
  inputs."bamboo_websocket-0_1_0".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_1_0".type  = "github";
  inputs."bamboo_websocket-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_2_0".dir   = "0_2_0";
  inputs."bamboo_websocket-0_2_0".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_2_0".ref   = "master";
  inputs."bamboo_websocket-0_2_0".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_2_0".type  = "github";
  inputs."bamboo_websocket-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_2_1".dir   = "0_2_1";
  inputs."bamboo_websocket-0_2_1".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_2_1".ref   = "master";
  inputs."bamboo_websocket-0_2_1".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_2_1".type  = "github";
  inputs."bamboo_websocket-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_2_2".dir   = "0_2_2";
  inputs."bamboo_websocket-0_2_2".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_2_2".ref   = "master";
  inputs."bamboo_websocket-0_2_2".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_2_2".type  = "github";
  inputs."bamboo_websocket-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_2_3".dir   = "0_2_3";
  inputs."bamboo_websocket-0_2_3".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_2_3".ref   = "master";
  inputs."bamboo_websocket-0_2_3".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_2_3".type  = "github";
  inputs."bamboo_websocket-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_2_4".dir   = "0_2_4";
  inputs."bamboo_websocket-0_2_4".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_2_4".ref   = "master";
  inputs."bamboo_websocket-0_2_4".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_2_4".type  = "github";
  inputs."bamboo_websocket-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_3_0".dir   = "0_3_0";
  inputs."bamboo_websocket-0_3_0".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_3_0".ref   = "master";
  inputs."bamboo_websocket-0_3_0".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_3_0".type  = "github";
  inputs."bamboo_websocket-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bamboo_websocket-0_3_1".dir   = "0_3_1";
  inputs."bamboo_websocket-0_3_1".owner = "nim-nix-pkgs";
  inputs."bamboo_websocket-0_3_1".ref   = "master";
  inputs."bamboo_websocket-0_3_1".repo  = "bamboo_websocket";
  inputs."bamboo_websocket-0_3_1".type  = "github";
  inputs."bamboo_websocket-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bamboo_websocket-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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