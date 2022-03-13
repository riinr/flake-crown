{
  description = ''A hacky helper lib for authoring Nim packages with package-level visiblity'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."package_visible_types-master".dir   = "master";
  inputs."package_visible_types-master".owner = "nim-nix-pkgs";
  inputs."package_visible_types-master".ref   = "master";
  inputs."package_visible_types-master".repo  = "package_visible_types";
  inputs."package_visible_types-master".type  = "github";
  inputs."package_visible_types-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."package_visible_types-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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