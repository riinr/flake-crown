{
  description = ''Benchmarking wrapper around getrusage()'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."getr-master".dir   = "master";
  inputs."getr-master".owner = "nim-nix-pkgs";
  inputs."getr-master".ref   = "master";
  inputs."getr-master".repo  = "getr";
  inputs."getr-master".type  = "github";
  inputs."getr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."getr-v0_1_1".dir   = "v0_1_1";
  inputs."getr-v0_1_1".owner = "nim-nix-pkgs";
  inputs."getr-v0_1_1".ref   = "master";
  inputs."getr-v0_1_1".repo  = "getr";
  inputs."getr-v0_1_1".type  = "github";
  inputs."getr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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