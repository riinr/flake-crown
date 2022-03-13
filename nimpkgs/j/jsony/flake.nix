{
  description = ''A loose, direct to object json parser with hooks.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsony-master".dir   = "master";
  inputs."jsony-master".owner = "nim-nix-pkgs";
  inputs."jsony-master".ref   = "master";
  inputs."jsony-master".repo  = "jsony";
  inputs."jsony-master".type  = "github";
  inputs."jsony-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-0_0_1".dir   = "0_0_1";
  inputs."jsony-0_0_1".owner = "nim-nix-pkgs";
  inputs."jsony-0_0_1".ref   = "master";
  inputs."jsony-0_0_1".repo  = "jsony";
  inputs."jsony-0_0_1".type  = "github";
  inputs."jsony-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-0_0_2".dir   = "0_0_2";
  inputs."jsony-0_0_2".owner = "nim-nix-pkgs";
  inputs."jsony-0_0_2".ref   = "master";
  inputs."jsony-0_0_2".repo  = "jsony";
  inputs."jsony-0_0_2".type  = "github";
  inputs."jsony-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-0_0_4".dir   = "0_0_4";
  inputs."jsony-0_0_4".owner = "nim-nix-pkgs";
  inputs."jsony-0_0_4".ref   = "master";
  inputs."jsony-0_0_4".repo  = "jsony";
  inputs."jsony-0_0_4".type  = "github";
  inputs."jsony-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-0_0_5".dir   = "0_0_5";
  inputs."jsony-0_0_5".owner = "nim-nix-pkgs";
  inputs."jsony-0_0_5".ref   = "master";
  inputs."jsony-0_0_5".repo  = "jsony";
  inputs."jsony-0_0_5".type  = "github";
  inputs."jsony-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_0_0".dir   = "1_0_0";
  inputs."jsony-1_0_0".owner = "nim-nix-pkgs";
  inputs."jsony-1_0_0".ref   = "master";
  inputs."jsony-1_0_0".repo  = "jsony";
  inputs."jsony-1_0_0".type  = "github";
  inputs."jsony-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_0_1".dir   = "1_0_1";
  inputs."jsony-1_0_1".owner = "nim-nix-pkgs";
  inputs."jsony-1_0_1".ref   = "master";
  inputs."jsony-1_0_1".repo  = "jsony";
  inputs."jsony-1_0_1".type  = "github";
  inputs."jsony-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_0_3".dir   = "1_0_3";
  inputs."jsony-1_0_3".owner = "nim-nix-pkgs";
  inputs."jsony-1_0_3".ref   = "master";
  inputs."jsony-1_0_3".repo  = "jsony";
  inputs."jsony-1_0_3".type  = "github";
  inputs."jsony-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_0_4".dir   = "1_0_4";
  inputs."jsony-1_0_4".owner = "nim-nix-pkgs";
  inputs."jsony-1_0_4".ref   = "master";
  inputs."jsony-1_0_4".repo  = "jsony";
  inputs."jsony-1_0_4".type  = "github";
  inputs."jsony-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_0_5".dir   = "1_0_5";
  inputs."jsony-1_0_5".owner = "nim-nix-pkgs";
  inputs."jsony-1_0_5".ref   = "master";
  inputs."jsony-1_0_5".repo  = "jsony";
  inputs."jsony-1_0_5".type  = "github";
  inputs."jsony-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_1_0".dir   = "1_1_0";
  inputs."jsony-1_1_0".owner = "nim-nix-pkgs";
  inputs."jsony-1_1_0".ref   = "master";
  inputs."jsony-1_1_0".repo  = "jsony";
  inputs."jsony-1_1_0".type  = "github";
  inputs."jsony-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_1_1".dir   = "1_1_1";
  inputs."jsony-1_1_1".owner = "nim-nix-pkgs";
  inputs."jsony-1_1_1".ref   = "master";
  inputs."jsony-1_1_1".repo  = "jsony";
  inputs."jsony-1_1_1".type  = "github";
  inputs."jsony-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_1_2".dir   = "1_1_2";
  inputs."jsony-1_1_2".owner = "nim-nix-pkgs";
  inputs."jsony-1_1_2".ref   = "master";
  inputs."jsony-1_1_2".repo  = "jsony";
  inputs."jsony-1_1_2".type  = "github";
  inputs."jsony-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony-1_1_3".dir   = "1_1_3";
  inputs."jsony-1_1_3".owner = "nim-nix-pkgs";
  inputs."jsony-1_1_3".ref   = "master";
  inputs."jsony-1_1_3".repo  = "jsony";
  inputs."jsony-1_1_3".type  = "github";
  inputs."jsony-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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