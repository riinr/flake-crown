{
  description = ''websockets for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."websocket-master".dir   = "master";
  inputs."websocket-master".owner = "nim-nix-pkgs";
  inputs."websocket-master".ref   = "master";
  inputs."websocket-master".repo  = "websocket";
  inputs."websocket-master".type  = "github";
  inputs."websocket-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_1_0".dir   = "0_1_0";
  inputs."websocket-0_1_0".owner = "nim-nix-pkgs";
  inputs."websocket-0_1_0".ref   = "master";
  inputs."websocket-0_1_0".repo  = "websocket";
  inputs."websocket-0_1_0".type  = "github";
  inputs."websocket-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_1_1".dir   = "0_1_1";
  inputs."websocket-0_1_1".owner = "nim-nix-pkgs";
  inputs."websocket-0_1_1".ref   = "master";
  inputs."websocket-0_1_1".repo  = "websocket";
  inputs."websocket-0_1_1".type  = "github";
  inputs."websocket-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_2_0".dir   = "0_2_0";
  inputs."websocket-0_2_0".owner = "nim-nix-pkgs";
  inputs."websocket-0_2_0".ref   = "master";
  inputs."websocket-0_2_0".repo  = "websocket";
  inputs."websocket-0_2_0".type  = "github";
  inputs."websocket-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_2_1".dir   = "0_2_1";
  inputs."websocket-0_2_1".owner = "nim-nix-pkgs";
  inputs."websocket-0_2_1".ref   = "master";
  inputs."websocket-0_2_1".repo  = "websocket";
  inputs."websocket-0_2_1".type  = "github";
  inputs."websocket-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_0".dir   = "0_3_0";
  inputs."websocket-0_3_0".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_0".ref   = "master";
  inputs."websocket-0_3_0".repo  = "websocket";
  inputs."websocket-0_3_0".type  = "github";
  inputs."websocket-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_1".dir   = "0_3_1";
  inputs."websocket-0_3_1".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_1".ref   = "master";
  inputs."websocket-0_3_1".repo  = "websocket";
  inputs."websocket-0_3_1".type  = "github";
  inputs."websocket-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_2".dir   = "0_3_2";
  inputs."websocket-0_3_2".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_2".ref   = "master";
  inputs."websocket-0_3_2".repo  = "websocket";
  inputs."websocket-0_3_2".type  = "github";
  inputs."websocket-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_3".dir   = "0_3_3";
  inputs."websocket-0_3_3".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_3".ref   = "master";
  inputs."websocket-0_3_3".repo  = "websocket";
  inputs."websocket-0_3_3".type  = "github";
  inputs."websocket-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_4".dir   = "0_3_4";
  inputs."websocket-0_3_4".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_4".ref   = "master";
  inputs."websocket-0_3_4".repo  = "websocket";
  inputs."websocket-0_3_4".type  = "github";
  inputs."websocket-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_5".dir   = "0_3_5";
  inputs."websocket-0_3_5".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_5".ref   = "master";
  inputs."websocket-0_3_5".repo  = "websocket";
  inputs."websocket-0_3_5".type  = "github";
  inputs."websocket-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_3_6".dir   = "0_3_6";
  inputs."websocket-0_3_6".owner = "nim-nix-pkgs";
  inputs."websocket-0_3_6".ref   = "master";
  inputs."websocket-0_3_6".repo  = "websocket";
  inputs."websocket-0_3_6".type  = "github";
  inputs."websocket-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_0".dir   = "0_4_0";
  inputs."websocket-0_4_0".owner = "nim-nix-pkgs";
  inputs."websocket-0_4_0".ref   = "master";
  inputs."websocket-0_4_0".repo  = "websocket";
  inputs."websocket-0_4_0".type  = "github";
  inputs."websocket-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_1".dir   = "0_4_1";
  inputs."websocket-0_4_1".owner = "nim-nix-pkgs";
  inputs."websocket-0_4_1".ref   = "master";
  inputs."websocket-0_4_1".repo  = "websocket";
  inputs."websocket-0_4_1".type  = "github";
  inputs."websocket-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_4_2".dir   = "0_4_2";
  inputs."websocket-0_4_2".owner = "nim-nix-pkgs";
  inputs."websocket-0_4_2".ref   = "master";
  inputs."websocket-0_4_2".repo  = "websocket";
  inputs."websocket-0_4_2".type  = "github";
  inputs."websocket-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-0_5_0".dir   = "0_5_0";
  inputs."websocket-0_5_0".owner = "nim-nix-pkgs";
  inputs."websocket-0_5_0".ref   = "master";
  inputs."websocket-0_5_0".repo  = "websocket";
  inputs."websocket-0_5_0".type  = "github";
  inputs."websocket-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket-v0_5_1".dir   = "v0_5_1";
  inputs."websocket-v0_5_1".owner = "nim-nix-pkgs";
  inputs."websocket-v0_5_1".ref   = "master";
  inputs."websocket-v0_5_1".repo  = "websocket";
  inputs."websocket-v0_5_1".type  = "github";
  inputs."websocket-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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