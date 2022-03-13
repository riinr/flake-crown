{
  description = ''A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rocksdb-master".dir   = "master";
  inputs."rocksdb-master".owner = "nim-nix-pkgs";
  inputs."rocksdb-master".ref   = "master";
  inputs."rocksdb-master".repo  = "rocksdb";
  inputs."rocksdb-master".type  = "github";
  inputs."rocksdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rocksdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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