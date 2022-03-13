{
  description = ''Graph With Weight Libary'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."weightedgraph-master".dir   = "master";
  inputs."weightedgraph-master".owner = "nim-nix-pkgs";
  inputs."weightedgraph-master".ref   = "master";
  inputs."weightedgraph-master".repo  = "weightedgraph";
  inputs."weightedgraph-master".type  = "github";
  inputs."weightedgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weightedgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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