{
  description = ''A wrapper for Facebook's RocksDB, an embeddable, persistent key-value store for fast storage'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rocksdb-master.flake = false;
  inputs.src-rocksdb-master.ref   = "refs/heads/master";
  inputs.src-rocksdb-master.owner = "status-im";
  inputs.src-rocksdb-master.repo  = "nim-rocksdb";
  inputs.src-rocksdb-master.type  = "github";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile".owner = "nim-nix-pkgs";
  inputs."tempfile".ref   = "master";
  inputs."tempfile".repo  = "tempfile";
  inputs."tempfile".dir   = "0_1_7";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rocksdb-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-rocksdb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}