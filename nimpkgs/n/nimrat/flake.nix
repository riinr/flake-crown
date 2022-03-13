{
  description = ''Module for working with rational numbers (fractions)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrat-master".dir   = "master";
  inputs."nimrat-master".owner = "nim-nix-pkgs";
  inputs."nimrat-master".ref   = "master";
  inputs."nimrat-master".repo  = "nimrat";
  inputs."nimrat-master".type  = "github";
  inputs."nimrat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrat-v0_1".dir   = "v0_1";
  inputs."nimrat-v0_1".owner = "nim-nix-pkgs";
  inputs."nimrat-v0_1".ref   = "master";
  inputs."nimrat-v0_1".repo  = "nimrat";
  inputs."nimrat-v0_1".type  = "github";
  inputs."nimrat-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrat-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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