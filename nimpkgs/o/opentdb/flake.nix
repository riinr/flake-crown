{
  description = ''Wrapper around the open trivia db api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opentdb-master".dir   = "master";
  inputs."opentdb-master".owner = "nim-nix-pkgs";
  inputs."opentdb-master".ref   = "master";
  inputs."opentdb-master".repo  = "opentdb";
  inputs."opentdb-master".type  = "github";
  inputs."opentdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-1_1_0".dir   = "1_1_0";
  inputs."opentdb-1_1_0".owner = "nim-nix-pkgs";
  inputs."opentdb-1_1_0".ref   = "master";
  inputs."opentdb-1_1_0".repo  = "opentdb";
  inputs."opentdb-1_1_0".type  = "github";
  inputs."opentdb-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-1_1_1".dir   = "1_1_1";
  inputs."opentdb-1_1_1".owner = "nim-nix-pkgs";
  inputs."opentdb-1_1_1".ref   = "master";
  inputs."opentdb-1_1_1".repo  = "opentdb";
  inputs."opentdb-1_1_1".type  = "github";
  inputs."opentdb-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-1_2_0".dir   = "1_2_0";
  inputs."opentdb-1_2_0".owner = "nim-nix-pkgs";
  inputs."opentdb-1_2_0".ref   = "master";
  inputs."opentdb-1_2_0".repo  = "opentdb";
  inputs."opentdb-1_2_0".type  = "github";
  inputs."opentdb-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-v1_0_2".dir   = "v1_0_2";
  inputs."opentdb-v1_0_2".owner = "nim-nix-pkgs";
  inputs."opentdb-v1_0_2".ref   = "master";
  inputs."opentdb-v1_0_2".repo  = "opentdb";
  inputs."opentdb-v1_0_2".type  = "github";
  inputs."opentdb-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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