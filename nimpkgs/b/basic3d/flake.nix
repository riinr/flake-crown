{
  description = ''Deprecated module for vector/matrices operations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."basic3d-master".dir   = "master";
  inputs."basic3d-master".owner = "nim-nix-pkgs";
  inputs."basic3d-master".ref   = "master";
  inputs."basic3d-master".repo  = "basic3d";
  inputs."basic3d-master".type  = "github";
  inputs."basic3d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basic3d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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