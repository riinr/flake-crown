{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."limdb-main".dir   = "main";
  inputs."limdb-main".owner = "nim-nix-pkgs";
  inputs."limdb-main".ref   = "master";
  inputs."limdb-main".repo  = "limdb";
  inputs."limdb-main".type  = "github";
  inputs."limdb-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."limdb-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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