{
  description = ''Graph With Weight Libary'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."weighted_graph-master".dir   = "master";
  inputs."weighted_graph-master".owner = "nim-nix-pkgs";
  inputs."weighted_graph-master".ref   = "master";
  inputs."weighted_graph-master".repo  = "weighted_graph";
  inputs."weighted_graph-master".type  = "github";
  inputs."weighted_graph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weighted_graph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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