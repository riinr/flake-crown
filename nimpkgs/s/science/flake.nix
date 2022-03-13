{
  description = ''A library for scientific computations in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."science-master".dir   = "master";
  inputs."science-master".owner = "nim-nix-pkgs";
  inputs."science-master".ref   = "master";
  inputs."science-master".repo  = "science";
  inputs."science-master".type  = "github";
  inputs."science-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."science-v0_2_2".dir   = "v0_2_2";
  inputs."science-v0_2_2".owner = "nim-nix-pkgs";
  inputs."science-v0_2_2".ref   = "master";
  inputs."science-v0_2_2".repo  = "science";
  inputs."science-v0_2_2".type  = "github";
  inputs."science-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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