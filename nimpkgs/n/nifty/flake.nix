{
  description = ''A decentralized (pseudo) package manager and script runner.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nifty-master".dir   = "master";
  inputs."nifty-master".owner = "nim-nix-pkgs";
  inputs."nifty-master".ref   = "master";
  inputs."nifty-master".repo  = "nifty";
  inputs."nifty-master".type  = "github";
  inputs."nifty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v0_1_0".dir   = "v0_1_0";
  inputs."nifty-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nifty-v0_1_0".ref   = "master";
  inputs."nifty-v0_1_0".repo  = "nifty";
  inputs."nifty-v0_1_0".type  = "github";
  inputs."nifty-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_0_0".dir   = "v1_0_0";
  inputs."nifty-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nifty-v1_0_0".ref   = "master";
  inputs."nifty-v1_0_0".repo  = "nifty";
  inputs."nifty-v1_0_0".type  = "github";
  inputs."nifty-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_0_1".dir   = "v1_0_1";
  inputs."nifty-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nifty-v1_0_1".ref   = "master";
  inputs."nifty-v1_0_1".repo  = "nifty";
  inputs."nifty-v1_0_1".type  = "github";
  inputs."nifty-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_1_0".dir   = "v1_1_0";
  inputs."nifty-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nifty-v1_1_0".ref   = "master";
  inputs."nifty-v1_1_0".repo  = "nifty";
  inputs."nifty-v1_1_0".type  = "github";
  inputs."nifty-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_0".dir   = "v1_2_0";
  inputs."nifty-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nifty-v1_2_0".ref   = "master";
  inputs."nifty-v1_2_0".repo  = "nifty";
  inputs."nifty-v1_2_0".type  = "github";
  inputs."nifty-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_1".dir   = "v1_2_1";
  inputs."nifty-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nifty-v1_2_1".ref   = "master";
  inputs."nifty-v1_2_1".repo  = "nifty";
  inputs."nifty-v1_2_1".type  = "github";
  inputs."nifty-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nifty-v1_2_2".dir   = "v1_2_2";
  inputs."nifty-v1_2_2".owner = "nim-nix-pkgs";
  inputs."nifty-v1_2_2".ref   = "master";
  inputs."nifty-v1_2_2".repo  = "nifty";
  inputs."nifty-v1_2_2".type  = "github";
  inputs."nifty-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nifty-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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