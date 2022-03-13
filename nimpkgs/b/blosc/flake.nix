{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blosc-master".dir   = "master";
  inputs."blosc-master".owner = "nim-nix-pkgs";
  inputs."blosc-master".ref   = "master";
  inputs."blosc-master".repo  = "blosc";
  inputs."blosc-master".type  = "github";
  inputs."blosc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blosc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blosc-v1_15_0".dir   = "v1_15_0";
  inputs."blosc-v1_15_0".owner = "nim-nix-pkgs";
  inputs."blosc-v1_15_0".ref   = "master";
  inputs."blosc-v1_15_0".repo  = "blosc";
  inputs."blosc-v1_15_0".type  = "github";
  inputs."blosc-v1_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blosc-v1_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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