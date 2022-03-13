{
  description = ''Metaprogramming tools for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."metatools-master".dir   = "master";
  inputs."metatools-master".owner = "nim-nix-pkgs";
  inputs."metatools-master".ref   = "master";
  inputs."metatools-master".repo  = "metatools";
  inputs."metatools-master".type  = "github";
  inputs."metatools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metatools-v0_1_0".dir   = "v0_1_0";
  inputs."metatools-v0_1_0".owner = "nim-nix-pkgs";
  inputs."metatools-v0_1_0".ref   = "master";
  inputs."metatools-v0_1_0".repo  = "metatools";
  inputs."metatools-v0_1_0".type  = "github";
  inputs."metatools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metatools-v0_2_0".dir   = "v0_2_0";
  inputs."metatools-v0_2_0".owner = "nim-nix-pkgs";
  inputs."metatools-v0_2_0".ref   = "master";
  inputs."metatools-v0_2_0".repo  = "metatools";
  inputs."metatools-v0_2_0".type  = "github";
  inputs."metatools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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