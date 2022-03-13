{
  description = ''Cairo backend for the denim ui engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."denim_ui_cairo-master".dir   = "master";
  inputs."denim_ui_cairo-master".owner = "nim-nix-pkgs";
  inputs."denim_ui_cairo-master".ref   = "master";
  inputs."denim_ui_cairo-master".repo  = "denim_ui_cairo";
  inputs."denim_ui_cairo-master".type  = "github";
  inputs."denim_ui_cairo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui_cairo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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