{
  description = ''Converts 2D linear graph coordinates to pixels on screen'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libgraph-master".dir   = "master";
  inputs."libgraph-master".owner = "nim-nix-pkgs";
  inputs."libgraph-master".ref   = "master";
  inputs."libgraph-master".repo  = "libgraph";
  inputs."libgraph-master".type  = "github";
  inputs."libgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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