{
  description = ''paramidi with nimib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paramidib-main".dir   = "main";
  inputs."paramidib-main".owner = "nim-nix-pkgs";
  inputs."paramidib-main".ref   = "master";
  inputs."paramidib-main".repo  = "paramidib";
  inputs."paramidib-main".type  = "github";
  inputs."paramidib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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