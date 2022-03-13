{
  description = ''gsl C Api wrapped for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gsl-main".dir   = "main";
  inputs."gsl-main".owner = "nim-nix-pkgs";
  inputs."gsl-main".ref   = "master";
  inputs."gsl-main".repo  = "gsl";
  inputs."gsl-main".type  = "github";
  inputs."gsl-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gsl-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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