{
  description = ''A module for generating lexer/parser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mcmurry-master".dir   = "master";
  inputs."mcmurry-master".owner = "nim-nix-pkgs";
  inputs."mcmurry-master".ref   = "master";
  inputs."mcmurry-master".repo  = "mcmurry";
  inputs."mcmurry-master".type  = "github";
  inputs."mcmurry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcmurry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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