{
  description = ''A macro collection for creating DSL in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dslutils-0_1_1".dir   = "0_1_1";
  inputs."dslutils-0_1_1".owner = "nim-nix-pkgs";
  inputs."dslutils-0_1_1".ref   = "master";
  inputs."dslutils-0_1_1".repo  = "dslutils";
  inputs."dslutils-0_1_1".type  = "github";
  inputs."dslutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dslutils-0_1_2".dir   = "0_1_2";
  inputs."dslutils-0_1_2".owner = "nim-nix-pkgs";
  inputs."dslutils-0_1_2".ref   = "master";
  inputs."dslutils-0_1_2".repo  = "dslutils";
  inputs."dslutils-0_1_2".type  = "github";
  inputs."dslutils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dslutils-v0_1_3".dir   = "v0_1_3";
  inputs."dslutils-v0_1_3".owner = "nim-nix-pkgs";
  inputs."dslutils-v0_1_3".ref   = "master";
  inputs."dslutils-v0_1_3".repo  = "dslutils";
  inputs."dslutils-v0_1_3".type  = "github";
  inputs."dslutils-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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