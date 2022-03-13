{
  description = ''Permuted Congruential Generator (PCG) Random Number Generation (RNG) for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pcgbasic-master".dir   = "master";
  inputs."pcgbasic-master".owner = "nim-nix-pkgs";
  inputs."pcgbasic-master".ref   = "master";
  inputs."pcgbasic-master".repo  = "pcgbasic";
  inputs."pcgbasic-master".type  = "github";
  inputs."pcgbasic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pcgbasic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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