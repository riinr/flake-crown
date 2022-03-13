{
  description = ''A pure nim version of C++'s std::bitset'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitset-main".dir   = "main";
  inputs."bitset-main".owner = "nim-nix-pkgs";
  inputs."bitset-main".ref   = "master";
  inputs."bitset-main".repo  = "bitset";
  inputs."bitset-main".type  = "github";
  inputs."bitset-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitset-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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