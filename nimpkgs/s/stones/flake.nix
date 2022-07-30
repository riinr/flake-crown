{
  description = ''A library of useful functions and tools for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stones-devel".dir   = "devel";
  inputs."stones-devel".owner = "nim-nix-pkgs";
  inputs."stones-devel".ref   = "master";
  inputs."stones-devel".repo  = "stones";
  inputs."stones-devel".type  = "github";
  inputs."stones-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stones-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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