{
  description = ''Nim utilities for advanced CPU operations: CPU identification, bindings to assorted intrinsics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cpuwhat-master".dir   = "master";
  inputs."cpuwhat-master".owner = "nim-nix-pkgs";
  inputs."cpuwhat-master".ref   = "master";
  inputs."cpuwhat-master".repo  = "cpuwhat";
  inputs."cpuwhat-master".type  = "github";
  inputs."cpuwhat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cpuwhat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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