{
  description = ''Bindings for Clipper2Lib: Polygon Clipping and Offsetting Library from Angus Johnson'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clipper2-master".dir   = "master";
  inputs."clipper2-master".owner = "nim-nix-pkgs";
  inputs."clipper2-master".ref   = "master";
  inputs."clipper2-master".repo  = "clipper2";
  inputs."clipper2-master".type  = "github";
  inputs."clipper2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clipper2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clipper2-v0_2_0".dir   = "v0_2_0";
  inputs."clipper2-v0_2_0".owner = "nim-nix-pkgs";
  inputs."clipper2-v0_2_0".ref   = "master";
  inputs."clipper2-v0_2_0".repo  = "clipper2";
  inputs."clipper2-v0_2_0".type  = "github";
  inputs."clipper2-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clipper2-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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