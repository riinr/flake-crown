{
  description = ''Command line argument parser in the form commonly used in ordinary shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shellopt-main".dir   = "main";
  inputs."shellopt-main".owner = "nim-nix-pkgs";
  inputs."shellopt-main".ref   = "master";
  inputs."shellopt-main".repo  = "shellopt";
  inputs."shellopt-main".type  = "github";
  inputs."shellopt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shellopt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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