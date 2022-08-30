{
  description = ''A powerful and easy-to-use fuzzing framework in Nim for C/C++/Obj-C targets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."drchaos-master".dir   = "master";
  inputs."drchaos-master".owner = "nim-nix-pkgs";
  inputs."drchaos-master".ref   = "master";
  inputs."drchaos-master".repo  = "drchaos";
  inputs."drchaos-master".type  = "github";
  inputs."drchaos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drchaos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drchaos-v0_1_0".dir   = "v0_1_0";
  inputs."drchaos-v0_1_0".owner = "nim-nix-pkgs";
  inputs."drchaos-v0_1_0".ref   = "master";
  inputs."drchaos-v0_1_0".repo  = "drchaos";
  inputs."drchaos-v0_1_0".type  = "github";
  inputs."drchaos-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drchaos-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drchaos-v0_1_1".dir   = "v0_1_1";
  inputs."drchaos-v0_1_1".owner = "nim-nix-pkgs";
  inputs."drchaos-v0_1_1".ref   = "master";
  inputs."drchaos-v0_1_1".repo  = "drchaos";
  inputs."drchaos-v0_1_1".type  = "github";
  inputs."drchaos-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drchaos-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drchaos-v0_1_2".dir   = "v0_1_2";
  inputs."drchaos-v0_1_2".owner = "nim-nix-pkgs";
  inputs."drchaos-v0_1_2".ref   = "master";
  inputs."drchaos-v0_1_2".repo  = "drchaos";
  inputs."drchaos-v0_1_2".type  = "github";
  inputs."drchaos-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drchaos-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drchaos-v0_1_3".dir   = "v0_1_3";
  inputs."drchaos-v0_1_3".owner = "nim-nix-pkgs";
  inputs."drchaos-v0_1_3".ref   = "master";
  inputs."drchaos-v0_1_3".repo  = "drchaos";
  inputs."drchaos-v0_1_3".type  = "github";
  inputs."drchaos-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drchaos-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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