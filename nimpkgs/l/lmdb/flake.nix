{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lmdb-master".dir   = "master";
  inputs."lmdb-master".owner = "nim-nix-pkgs";
  inputs."lmdb-master".ref   = "master";
  inputs."lmdb-master".repo  = "lmdb";
  inputs."lmdb-master".type  = "github";
  inputs."lmdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lmdb-0_1_0".dir   = "0_1_0";
  inputs."lmdb-0_1_0".owner = "nim-nix-pkgs";
  inputs."lmdb-0_1_0".ref   = "master";
  inputs."lmdb-0_1_0".repo  = "lmdb";
  inputs."lmdb-0_1_0".type  = "github";
  inputs."lmdb-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lmdb-0_1_1".dir   = "0_1_1";
  inputs."lmdb-0_1_1".owner = "nim-nix-pkgs";
  inputs."lmdb-0_1_1".ref   = "master";
  inputs."lmdb-0_1_1".repo  = "lmdb";
  inputs."lmdb-0_1_1".type  = "github";
  inputs."lmdb-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lmdb-0_1_2".dir   = "0_1_2";
  inputs."lmdb-0_1_2".owner = "nim-nix-pkgs";
  inputs."lmdb-0_1_2".ref   = "master";
  inputs."lmdb-0_1_2".repo  = "lmdb";
  inputs."lmdb-0_1_2".type  = "github";
  inputs."lmdb-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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