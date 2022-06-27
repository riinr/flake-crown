{
  description = ''Incremental (Fully Dynamic) Constrained_Delaunay_Triangulation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cdt-master".dir   = "master";
  inputs."cdt-master".owner = "nim-nix-pkgs";
  inputs."cdt-master".ref   = "master";
  inputs."cdt-master".repo  = "cdt";
  inputs."cdt-master".type  = "github";
  inputs."cdt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cdt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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