{
  description = ''BSON Binary JSON Serialization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bson-master".dir   = "master";
  inputs."bson-master".owner = "nim-nix-pkgs";
  inputs."bson-master".ref   = "master";
  inputs."bson-master".repo  = "bson";
  inputs."bson-master".type  = "github";
  inputs."bson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_0_0".dir   = "v1_0_0";
  inputs."bson-v1_0_0".owner = "nim-nix-pkgs";
  inputs."bson-v1_0_0".ref   = "master";
  inputs."bson-v1_0_0".repo  = "bson";
  inputs."bson-v1_0_0".type  = "github";
  inputs."bson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_0_1".dir   = "v1_0_1";
  inputs."bson-v1_0_1".owner = "nim-nix-pkgs";
  inputs."bson-v1_0_1".ref   = "master";
  inputs."bson-v1_0_1".repo  = "bson";
  inputs."bson-v1_0_1".type  = "github";
  inputs."bson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_1_1".dir   = "v1_1_1";
  inputs."bson-v1_1_1".owner = "nim-nix-pkgs";
  inputs."bson-v1_1_1".ref   = "master";
  inputs."bson-v1_1_1".repo  = "bson";
  inputs."bson-v1_1_1".type  = "github";
  inputs."bson-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_1_2".dir   = "v1_1_2";
  inputs."bson-v1_1_2".owner = "nim-nix-pkgs";
  inputs."bson-v1_1_2".ref   = "master";
  inputs."bson-v1_1_2".repo  = "bson";
  inputs."bson-v1_1_2".type  = "github";
  inputs."bson-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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