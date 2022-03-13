{
  description = ''miniupnpc and libnatpmp wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nat_traversal-master".dir   = "master";
  inputs."nat_traversal-master".owner = "nim-nix-pkgs";
  inputs."nat_traversal-master".ref   = "master";
  inputs."nat_traversal-master".repo  = "nat_traversal";
  inputs."nat_traversal-master".type  = "github";
  inputs."nat_traversal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nat_traversal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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