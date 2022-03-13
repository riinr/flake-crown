{
  description = ''Simple WebSocket library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ws-master".dir   = "master";
  inputs."ws-master".owner = "nim-nix-pkgs";
  inputs."ws-master".ref   = "master";
  inputs."ws-master".repo  = "ws";
  inputs."ws-master".type  = "github";
  inputs."ws-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_2_3".dir   = "0_2_3";
  inputs."ws-0_2_3".owner = "nim-nix-pkgs";
  inputs."ws-0_2_3".ref   = "master";
  inputs."ws-0_2_3".repo  = "ws";
  inputs."ws-0_2_3".type  = "github";
  inputs."ws-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_0".dir   = "0_3_0";
  inputs."ws-0_3_0".owner = "nim-nix-pkgs";
  inputs."ws-0_3_0".ref   = "master";
  inputs."ws-0_3_0".repo  = "ws";
  inputs."ws-0_3_0".type  = "github";
  inputs."ws-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_1".dir   = "0_3_1";
  inputs."ws-0_3_1".owner = "nim-nix-pkgs";
  inputs."ws-0_3_1".ref   = "master";
  inputs."ws-0_3_1".repo  = "ws";
  inputs."ws-0_3_1".type  = "github";
  inputs."ws-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_2".dir   = "0_3_2";
  inputs."ws-0_3_2".owner = "nim-nix-pkgs";
  inputs."ws-0_3_2".ref   = "master";
  inputs."ws-0_3_2".repo  = "ws";
  inputs."ws-0_3_2".type  = "github";
  inputs."ws-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_3_3".dir   = "0_3_3";
  inputs."ws-0_3_3".owner = "nim-nix-pkgs";
  inputs."ws-0_3_3".ref   = "master";
  inputs."ws-0_3_3".repo  = "ws";
  inputs."ws-0_3_3".type  = "github";
  inputs."ws-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_0".dir   = "0_4_0";
  inputs."ws-0_4_0".owner = "nim-nix-pkgs";
  inputs."ws-0_4_0".ref   = "master";
  inputs."ws-0_4_0".repo  = "ws";
  inputs."ws-0_4_0".type  = "github";
  inputs."ws-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_1".dir   = "0_4_1";
  inputs."ws-0_4_1".owner = "nim-nix-pkgs";
  inputs."ws-0_4_1".ref   = "master";
  inputs."ws-0_4_1".repo  = "ws";
  inputs."ws-0_4_1".type  = "github";
  inputs."ws-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_2".dir   = "0_4_2";
  inputs."ws-0_4_2".owner = "nim-nix-pkgs";
  inputs."ws-0_4_2".ref   = "master";
  inputs."ws-0_4_2".repo  = "ws";
  inputs."ws-0_4_2".type  = "github";
  inputs."ws-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_3".dir   = "0_4_3";
  inputs."ws-0_4_3".owner = "nim-nix-pkgs";
  inputs."ws-0_4_3".ref   = "master";
  inputs."ws-0_4_3".repo  = "ws";
  inputs."ws-0_4_3".type  = "github";
  inputs."ws-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_4_4".dir   = "0_4_4";
  inputs."ws-0_4_4".owner = "nim-nix-pkgs";
  inputs."ws-0_4_4".ref   = "master";
  inputs."ws-0_4_4".repo  = "ws";
  inputs."ws-0_4_4".type  = "github";
  inputs."ws-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-0_5_0".dir   = "0_5_0";
  inputs."ws-0_5_0".owner = "nim-nix-pkgs";
  inputs."ws-0_5_0".ref   = "master";
  inputs."ws-0_5_0".repo  = "ws";
  inputs."ws-0_5_0".type  = "github";
  inputs."ws-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws-v0_4_0".dir   = "v0_4_0";
  inputs."ws-v0_4_0".owner = "nim-nix-pkgs";
  inputs."ws-v0_4_0".ref   = "master";
  inputs."ws-v0_4_0".repo  = "ws";
  inputs."ws-v0_4_0".type  = "github";
  inputs."ws-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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