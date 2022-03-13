{
  description = ''Code coverage CLI + library for Nim using LCOV'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."coco-master".dir   = "master";
  inputs."coco-master".owner = "nim-nix-pkgs";
  inputs."coco-master".ref   = "master";
  inputs."coco-master".repo  = "coco";
  inputs."coco-master".type  = "github";
  inputs."coco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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