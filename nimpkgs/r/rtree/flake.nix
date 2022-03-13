{
  description = ''R-Tree'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rtree-master".dir   = "master";
  inputs."rtree-master".owner = "nim-nix-pkgs";
  inputs."rtree-master".ref   = "master";
  inputs."rtree-master".repo  = "rtree";
  inputs."rtree-master".type  = "github";
  inputs."rtree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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