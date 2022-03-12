{
  description = ''Key/Value storage into a fast file-hash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."niledb-master".url = "path:./master";
  inputs."niledb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_0_0".url = "path:./v1_0_0";
  inputs."niledb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_1_0".url = "path:./v1_1_0";
  inputs."niledb-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_3_0".url = "path:./v1_3_0";
  inputs."niledb-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."niledb-v1_3_1".url = "path:./v1_3_1";
  inputs."niledb-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niledb-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}