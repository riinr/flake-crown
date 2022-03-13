{
  description = ''High Performance Computing and Image Toolbox: SIMD, JIT Assembler, OpenMP, runtime CPU feature detection, optimised machine learning primitives'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."laser-master".dir   = "master";
  inputs."laser-master".owner = "nim-nix-pkgs";
  inputs."laser-master".ref   = "master";
  inputs."laser-master".repo  = "laser";
  inputs."laser-master".type  = "github";
  inputs."laser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."laser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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