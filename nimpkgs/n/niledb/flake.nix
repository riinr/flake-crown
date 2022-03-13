{
  description = ''Key/Value storage into a fast file-hash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niledb-master".dir   = "master";
  inputs."niledb-master".owner = "nim-nix-pkgs";
  inputs."niledb-master".ref   = "master";
  inputs."niledb-master".repo  = "niledb";
  inputs."niledb-master".type  = "github";
  inputs."niledb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_0_0".dir   = "v1_0_0";
  inputs."niledb-v1_0_0".owner = "nim-nix-pkgs";
  inputs."niledb-v1_0_0".ref   = "master";
  inputs."niledb-v1_0_0".repo  = "niledb";
  inputs."niledb-v1_0_0".type  = "github";
  inputs."niledb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_1_0".dir   = "v1_1_0";
  inputs."niledb-v1_1_0".owner = "nim-nix-pkgs";
  inputs."niledb-v1_1_0".ref   = "master";
  inputs."niledb-v1_1_0".repo  = "niledb";
  inputs."niledb-v1_1_0".type  = "github";
  inputs."niledb-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_3_0".dir   = "v1_3_0";
  inputs."niledb-v1_3_0".owner = "nim-nix-pkgs";
  inputs."niledb-v1_3_0".ref   = "master";
  inputs."niledb-v1_3_0".repo  = "niledb";
  inputs."niledb-v1_3_0".type  = "github";
  inputs."niledb-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_3_1".dir   = "v1_3_1";
  inputs."niledb-v1_3_1".owner = "nim-nix-pkgs";
  inputs."niledb-v1_3_1".ref   = "master";
  inputs."niledb-v1_3_1".repo  = "niledb";
  inputs."niledb-v1_3_1".type  = "github";
  inputs."niledb-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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