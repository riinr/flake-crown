{
  description = ''A small library for writing cli programs in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loki-master".dir   = "master";
  inputs."loki-master".owner = "nim-nix-pkgs";
  inputs."loki-master".ref   = "master";
  inputs."loki-master".repo  = "loki";
  inputs."loki-master".type  = "github";
  inputs."loki-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_1_0".dir   = "0_1_0";
  inputs."loki-0_1_0".owner = "nim-nix-pkgs";
  inputs."loki-0_1_0".ref   = "master";
  inputs."loki-0_1_0".repo  = "loki";
  inputs."loki-0_1_0".type  = "github";
  inputs."loki-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_1_1".dir   = "0_1_1";
  inputs."loki-0_1_1".owner = "nim-nix-pkgs";
  inputs."loki-0_1_1".ref   = "master";
  inputs."loki-0_1_1".repo  = "loki";
  inputs."loki-0_1_1".type  = "github";
  inputs."loki-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_2_0".dir   = "0_2_0";
  inputs."loki-0_2_0".owner = "nim-nix-pkgs";
  inputs."loki-0_2_0".ref   = "master";
  inputs."loki-0_2_0".repo  = "loki";
  inputs."loki-0_2_0".type  = "github";
  inputs."loki-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loki-0_3_0".dir   = "0_3_0";
  inputs."loki-0_3_0".owner = "nim-nix-pkgs";
  inputs."loki-0_3_0".ref   = "master";
  inputs."loki-0_3_0".repo  = "loki";
  inputs."loki-0_3_0".type  = "github";
  inputs."loki-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loki-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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