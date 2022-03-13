{
  description = ''Interface for reading per bits'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitstreams-main".dir   = "main";
  inputs."bitstreams-main".owner = "nim-nix-pkgs";
  inputs."bitstreams-main".ref   = "master";
  inputs."bitstreams-main".repo  = "bitstreams";
  inputs."bitstreams-main".type  = "github";
  inputs."bitstreams-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitstreams-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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