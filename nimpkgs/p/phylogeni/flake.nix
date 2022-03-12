{
  description = ''A library with some basic functions for working with phylogenetic trees.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."phylogeni-main".url = "path:./main";
  inputs."phylogeni-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."phylogeni-v0_0_2".url = "path:./v0_0_2";
  inputs."phylogeni-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}