{
  description = ''A simple bitarray library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitarray-master".dir   = "master";
  inputs."bitarray-master".owner = "nim-nix-pkgs";
  inputs."bitarray-master".ref   = "master";
  inputs."bitarray-master".repo  = "bitarray";
  inputs."bitarray-master".type  = "github";
  inputs."bitarray-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-0_2_0".dir   = "0_2_0";
  inputs."bitarray-0_2_0".owner = "nim-nix-pkgs";
  inputs."bitarray-0_2_0".ref   = "master";
  inputs."bitarray-0_2_0".repo  = "bitarray";
  inputs."bitarray-0_2_0".type  = "github";
  inputs."bitarray-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-0_2_1".dir   = "0_2_1";
  inputs."bitarray-0_2_1".owner = "nim-nix-pkgs";
  inputs."bitarray-0_2_1".ref   = "master";
  inputs."bitarray-0_2_1".repo  = "bitarray";
  inputs."bitarray-0_2_1".type  = "github";
  inputs."bitarray-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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