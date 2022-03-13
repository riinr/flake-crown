{
  description = ''A library with some basic functions for working with phylogenetic trees.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."phylogeni-main".dir   = "main";
  inputs."phylogeni-main".owner = "nim-nix-pkgs";
  inputs."phylogeni-main".ref   = "master";
  inputs."phylogeni-main".repo  = "phylogeni";
  inputs."phylogeni-main".type  = "github";
  inputs."phylogeni-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phylogeni-v0_0_2".dir   = "v0_0_2";
  inputs."phylogeni-v0_0_2".owner = "nim-nix-pkgs";
  inputs."phylogeni-v0_0_2".ref   = "master";
  inputs."phylogeni-v0_0_2".repo  = "phylogeni";
  inputs."phylogeni-v0_0_2".type  = "github";
  inputs."phylogeni-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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