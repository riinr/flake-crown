{
  description = ''A pure Nim bloom filter.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."flower-main".dir   = "main";
  inputs."flower-main".owner = "nim-nix-pkgs";
  inputs."flower-main".ref   = "master";
  inputs."flower-main".repo  = "flower";
  inputs."flower-main".type  = "github";
  inputs."flower-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flower-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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