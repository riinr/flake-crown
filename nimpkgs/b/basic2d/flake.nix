{
  description = ''Deprecated module for vector/matrices operations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."basic2d-master".dir   = "master";
  inputs."basic2d-master".owner = "nim-nix-pkgs";
  inputs."basic2d-master".ref   = "master";
  inputs."basic2d-master".repo  = "basic2d";
  inputs."basic2d-master".type  = "github";
  inputs."basic2d-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."basic2d-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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