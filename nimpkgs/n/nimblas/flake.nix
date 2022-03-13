{
  description = ''BLAS for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimblas-master".dir   = "master";
  inputs."nimblas-master".owner = "nim-nix-pkgs";
  inputs."nimblas-master".ref   = "master";
  inputs."nimblas-master".repo  = "nimblas";
  inputs."nimblas-master".type  = "github";
  inputs."nimblas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_1".dir   = "0_1_1";
  inputs."nimblas-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimblas-0_1_1".ref   = "master";
  inputs."nimblas-0_1_1".repo  = "nimblas";
  inputs."nimblas-0_1_1".type  = "github";
  inputs."nimblas-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_2".dir   = "0_1_2";
  inputs."nimblas-0_1_2".owner = "nim-nix-pkgs";
  inputs."nimblas-0_1_2".ref   = "master";
  inputs."nimblas-0_1_2".repo  = "nimblas";
  inputs."nimblas-0_1_2".type  = "github";
  inputs."nimblas-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_3".dir   = "0_1_3";
  inputs."nimblas-0_1_3".owner = "nim-nix-pkgs";
  inputs."nimblas-0_1_3".ref   = "master";
  inputs."nimblas-0_1_3".repo  = "nimblas";
  inputs."nimblas-0_1_3".type  = "github";
  inputs."nimblas-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_1_4".dir   = "0_1_4";
  inputs."nimblas-0_1_4".owner = "nim-nix-pkgs";
  inputs."nimblas-0_1_4".ref   = "master";
  inputs."nimblas-0_1_4".repo  = "nimblas";
  inputs."nimblas-0_1_4".type  = "github";
  inputs."nimblas-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_0".dir   = "0_2_0";
  inputs."nimblas-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimblas-0_2_0".ref   = "master";
  inputs."nimblas-0_2_0".repo  = "nimblas";
  inputs."nimblas-0_2_0".type  = "github";
  inputs."nimblas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_1".dir   = "0_2_1";
  inputs."nimblas-0_2_1".owner = "nim-nix-pkgs";
  inputs."nimblas-0_2_1".ref   = "master";
  inputs."nimblas-0_2_1".repo  = "nimblas";
  inputs."nimblas-0_2_1".type  = "github";
  inputs."nimblas-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimblas-0_2_2".dir   = "0_2_2";
  inputs."nimblas-0_2_2".owner = "nim-nix-pkgs";
  inputs."nimblas-0_2_2".ref   = "master";
  inputs."nimblas-0_2_2".repo  = "nimblas";
  inputs."nimblas-0_2_2".type  = "github";
  inputs."nimblas-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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