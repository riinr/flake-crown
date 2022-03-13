{
  description = ''libsvm wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libsvm-master".dir   = "master";
  inputs."libsvm-master".owner = "nim-nix-pkgs";
  inputs."libsvm-master".ref   = "master";
  inputs."libsvm-master".repo  = "libsvm";
  inputs."libsvm-master".type  = "github";
  inputs."libsvm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsvm-v0_1_1".dir   = "v0_1_1";
  inputs."libsvm-v0_1_1".owner = "nim-nix-pkgs";
  inputs."libsvm-v0_1_1".ref   = "master";
  inputs."libsvm-v0_1_1".repo  = "libsvm";
  inputs."libsvm-v0_1_1".type  = "github";
  inputs."libsvm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsvm-v0_1_2".dir   = "v0_1_2";
  inputs."libsvm-v0_1_2".owner = "nim-nix-pkgs";
  inputs."libsvm-v0_1_2".ref   = "master";
  inputs."libsvm-v0_1_2".repo  = "libsvm";
  inputs."libsvm-v0_1_2".type  = "github";
  inputs."libsvm-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsvm-v0_1_3".dir   = "v0_1_3";
  inputs."libsvm-v0_1_3".owner = "nim-nix-pkgs";
  inputs."libsvm-v0_1_3".ref   = "master";
  inputs."libsvm-v0_1_3".repo  = "libsvm";
  inputs."libsvm-v0_1_3".type  = "github";
  inputs."libsvm-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsvm-v0_2_0".dir   = "v0_2_0";
  inputs."libsvm-v0_2_0".owner = "nim-nix-pkgs";
  inputs."libsvm-v0_2_0".ref   = "master";
  inputs."libsvm-v0_2_0".repo  = "libsvm";
  inputs."libsvm-v0_2_0".type  = "github";
  inputs."libsvm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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