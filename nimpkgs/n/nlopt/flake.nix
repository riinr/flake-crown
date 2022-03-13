{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nlopt-master".dir   = "master";
  inputs."nlopt-master".owner = "nim-nix-pkgs";
  inputs."nlopt-master".ref   = "master";
  inputs."nlopt-master".repo  = "nlopt";
  inputs."nlopt-master".type  = "github";
  inputs."nlopt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nlopt-v0_3_0".dir   = "v0_3_0";
  inputs."nlopt-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nlopt-v0_3_0".ref   = "master";
  inputs."nlopt-v0_3_0".repo  = "nlopt";
  inputs."nlopt-v0_3_0".type  = "github";
  inputs."nlopt-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nlopt-v0_3_1".dir   = "v0_3_1";
  inputs."nlopt-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nlopt-v0_3_1".ref   = "master";
  inputs."nlopt-v0_3_1".repo  = "nlopt";
  inputs."nlopt-v0_3_1".type  = "github";
  inputs."nlopt-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nlopt-v0_3_2".dir   = "v0_3_2";
  inputs."nlopt-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nlopt-v0_3_2".ref   = "master";
  inputs."nlopt-v0_3_2".repo  = "nlopt";
  inputs."nlopt-v0_3_2".type  = "github";
  inputs."nlopt-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nlopt-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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