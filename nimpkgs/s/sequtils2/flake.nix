{
  description = ''Additional functions for sequences that are not present in sequtils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sequtils2-master".dir   = "master";
  inputs."sequtils2-master".owner = "nim-nix-pkgs";
  inputs."sequtils2-master".ref   = "master";
  inputs."sequtils2-master".repo  = "sequtils2";
  inputs."sequtils2-master".type  = "github";
  inputs."sequtils2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequtils2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sequtils2-1_0_0".dir   = "1_0_0";
  inputs."sequtils2-1_0_0".owner = "nim-nix-pkgs";
  inputs."sequtils2-1_0_0".ref   = "master";
  inputs."sequtils2-1_0_0".repo  = "sequtils2";
  inputs."sequtils2-1_0_0".type  = "github";
  inputs."sequtils2-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequtils2-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sequtils2-1_1_0".dir   = "1_1_0";
  inputs."sequtils2-1_1_0".owner = "nim-nix-pkgs";
  inputs."sequtils2-1_1_0".ref   = "master";
  inputs."sequtils2-1_1_0".repo  = "sequtils2";
  inputs."sequtils2-1_1_0".type  = "github";
  inputs."sequtils2-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sequtils2-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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