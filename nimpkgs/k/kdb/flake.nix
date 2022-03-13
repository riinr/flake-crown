{
  description = ''Nim structs to work with Kdb in type-safe manner and low-level Nim to Kdb bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kdb-master".dir   = "master";
  inputs."kdb-master".owner = "nim-nix-pkgs";
  inputs."kdb-master".ref   = "master";
  inputs."kdb-master".repo  = "kdb";
  inputs."kdb-master".type  = "github";
  inputs."kdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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