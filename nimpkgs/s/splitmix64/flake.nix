{
  description = ''Tiny random number generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."splitmix64-trunk".dir   = "trunk";
  inputs."splitmix64-trunk".owner = "nim-nix-pkgs";
  inputs."splitmix64-trunk".ref   = "master";
  inputs."splitmix64-trunk".repo  = "splitmix64";
  inputs."splitmix64-trunk".type  = "github";
  inputs."splitmix64-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."splitmix64-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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