{
  description = ''LevelDB bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."leveldb-master".dir   = "master";
  inputs."leveldb-master".owner = "nim-nix-pkgs";
  inputs."leveldb-master".ref   = "master";
  inputs."leveldb-master".repo  = "leveldb";
  inputs."leveldb-master".type  = "github";
  inputs."leveldb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."leveldb-0_2_0".dir   = "0_2_0";
  inputs."leveldb-0_2_0".owner = "nim-nix-pkgs";
  inputs."leveldb-0_2_0".ref   = "master";
  inputs."leveldb-0_2_0".repo  = "leveldb";
  inputs."leveldb-0_2_0".type  = "github";
  inputs."leveldb-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."leveldb-0_3_0".dir   = "0_3_0";
  inputs."leveldb-0_3_0".owner = "nim-nix-pkgs";
  inputs."leveldb-0_3_0".ref   = "master";
  inputs."leveldb-0_3_0".repo  = "leveldb";
  inputs."leveldb-0_3_0".type  = "github";
  inputs."leveldb-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."leveldb-0_4_0".dir   = "0_4_0";
  inputs."leveldb-0_4_0".owner = "nim-nix-pkgs";
  inputs."leveldb-0_4_0".ref   = "master";
  inputs."leveldb-0_4_0".repo  = "leveldb";
  inputs."leveldb-0_4_0".type  = "github";
  inputs."leveldb-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."leveldb-0_4_1".dir   = "0_4_1";
  inputs."leveldb-0_4_1".owner = "nim-nix-pkgs";
  inputs."leveldb-0_4_1".ref   = "master";
  inputs."leveldb-0_4_1".repo  = "leveldb";
  inputs."leveldb-0_4_1".type  = "github";
  inputs."leveldb-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."leveldb-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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