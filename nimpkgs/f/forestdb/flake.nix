{
  description = ''ForestDB is fast key-value storage engine that is based on a Hierarchical B+-Tree based Trie, or HB+-Trie.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."forestdb-master".dir   = "master";
  inputs."forestdb-master".owner = "nim-nix-pkgs";
  inputs."forestdb-master".ref   = "master";
  inputs."forestdb-master".repo  = "forestdb";
  inputs."forestdb-master".type  = "github";
  inputs."forestdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."forestdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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