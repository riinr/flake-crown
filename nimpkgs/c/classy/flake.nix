{
  description = ''typeclasses for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."classy-master".dir   = "master";
  inputs."classy-master".owner = "nim-nix-pkgs";
  inputs."classy-master".ref   = "master";
  inputs."classy-master".repo  = "classy";
  inputs."classy-master".type  = "github";
  inputs."classy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_1".dir   = "v0_0_1";
  inputs."classy-v0_0_1".owner = "nim-nix-pkgs";
  inputs."classy-v0_0_1".ref   = "master";
  inputs."classy-v0_0_1".repo  = "classy";
  inputs."classy-v0_0_1".type  = "github";
  inputs."classy-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_2".dir   = "v0_0_2";
  inputs."classy-v0_0_2".owner = "nim-nix-pkgs";
  inputs."classy-v0_0_2".ref   = "master";
  inputs."classy-v0_0_2".repo  = "classy";
  inputs."classy-v0_0_2".type  = "github";
  inputs."classy-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_3".dir   = "v0_0_3";
  inputs."classy-v0_0_3".owner = "nim-nix-pkgs";
  inputs."classy-v0_0_3".ref   = "master";
  inputs."classy-v0_0_3".repo  = "classy";
  inputs."classy-v0_0_3".type  = "github";
  inputs."classy-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."classy-v0_0_4".dir   = "v0_0_4";
  inputs."classy-v0_0_4".owner = "nim-nix-pkgs";
  inputs."classy-v0_0_4".ref   = "master";
  inputs."classy-v0_0_4".repo  = "classy";
  inputs."classy-v0_0_4".type  = "github";
  inputs."classy-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classy-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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