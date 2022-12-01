{
  description = ''Open XML Spreadsheet (Excel) Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xl-devel".dir   = "devel";
  inputs."xl-devel".owner = "nim-nix-pkgs";
  inputs."xl-devel".ref   = "master";
  inputs."xl-devel".repo  = "xl";
  inputs."xl-devel".type  = "github";
  inputs."xl-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xl-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xl-main".dir   = "main";
  inputs."xl-main".owner = "nim-nix-pkgs";
  inputs."xl-main".ref   = "master";
  inputs."xl-main".repo  = "xl";
  inputs."xl-main".type  = "github";
  inputs."xl-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xl-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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