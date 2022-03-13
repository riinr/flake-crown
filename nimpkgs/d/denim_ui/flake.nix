{
  description = ''The Denim UI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."denim_ui-master".dir   = "master";
  inputs."denim_ui-master".owner = "nim-nix-pkgs";
  inputs."denim_ui-master".ref   = "master";
  inputs."denim_ui-master".repo  = "denim_ui";
  inputs."denim_ui-master".type  = "github";
  inputs."denim_ui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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