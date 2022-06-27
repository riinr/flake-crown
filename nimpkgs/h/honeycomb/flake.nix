{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."honeycomb-master".dir   = "master";
  inputs."honeycomb-master".owner = "nim-nix-pkgs";
  inputs."honeycomb-master".ref   = "master";
  inputs."honeycomb-master".repo  = "honeycomb";
  inputs."honeycomb-master".type  = "github";
  inputs."honeycomb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."honeycomb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."honeycomb-v0_1_0".dir   = "v0_1_0";
  inputs."honeycomb-v0_1_0".owner = "nim-nix-pkgs";
  inputs."honeycomb-v0_1_0".ref   = "master";
  inputs."honeycomb-v0_1_0".repo  = "honeycomb";
  inputs."honeycomb-v0_1_0".type  = "github";
  inputs."honeycomb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."honeycomb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."honeycomb-v0_1_1".dir   = "v0_1_1";
  inputs."honeycomb-v0_1_1".owner = "nim-nix-pkgs";
  inputs."honeycomb-v0_1_1".ref   = "master";
  inputs."honeycomb-v0_1_1".repo  = "honeycomb";
  inputs."honeycomb-v0_1_1".type  = "github";
  inputs."honeycomb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."honeycomb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."honeycomb-v0_1_2".dir   = "v0_1_2";
  inputs."honeycomb-v0_1_2".owner = "nim-nix-pkgs";
  inputs."honeycomb-v0_1_2".ref   = "master";
  inputs."honeycomb-v0_1_2".repo  = "honeycomb";
  inputs."honeycomb-v0_1_2".type  = "github";
  inputs."honeycomb-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."honeycomb-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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