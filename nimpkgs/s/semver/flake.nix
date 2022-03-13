{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."semver-master".dir   = "master";
  inputs."semver-master".owner = "nim-nix-pkgs";
  inputs."semver-master".ref   = "master";
  inputs."semver-master".repo  = "semver";
  inputs."semver-master".type  = "github";
  inputs."semver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v_1_0_2".dir   = "v_1_0_2";
  inputs."semver-v_1_0_2".owner = "nim-nix-pkgs";
  inputs."semver-v_1_0_2".ref   = "master";
  inputs."semver-v_1_0_2".repo  = "semver";
  inputs."semver-v_1_0_2".type  = "github";
  inputs."semver-v_1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v_1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_0".dir   = "v1_0_0";
  inputs."semver-v1_0_0".owner = "nim-nix-pkgs";
  inputs."semver-v1_0_0".ref   = "master";
  inputs."semver-v1_0_0".repo  = "semver";
  inputs."semver-v1_0_0".type  = "github";
  inputs."semver-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_1".dir   = "v1_0_1";
  inputs."semver-v1_0_1".owner = "nim-nix-pkgs";
  inputs."semver-v1_0_1".ref   = "master";
  inputs."semver-v1_0_1".repo  = "semver";
  inputs."semver-v1_0_1".type  = "github";
  inputs."semver-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_2".dir   = "v1_0_2";
  inputs."semver-v1_0_2".owner = "nim-nix-pkgs";
  inputs."semver-v1_0_2".ref   = "master";
  inputs."semver-v1_0_2".repo  = "semver";
  inputs."semver-v1_0_2".type  = "github";
  inputs."semver-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_3".dir   = "v1_0_3";
  inputs."semver-v1_0_3".owner = "nim-nix-pkgs";
  inputs."semver-v1_0_3".ref   = "master";
  inputs."semver-v1_0_3".repo  = "semver";
  inputs."semver-v1_0_3".type  = "github";
  inputs."semver-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_4".dir   = "v1_0_4";
  inputs."semver-v1_0_4".owner = "nim-nix-pkgs";
  inputs."semver-v1_0_4".ref   = "master";
  inputs."semver-v1_0_4".repo  = "semver";
  inputs."semver-v1_0_4".type  = "github";
  inputs."semver-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_1_0".dir   = "v1_1_0";
  inputs."semver-v1_1_0".owner = "nim-nix-pkgs";
  inputs."semver-v1_1_0".ref   = "master";
  inputs."semver-v1_1_0".repo  = "semver";
  inputs."semver-v1_1_0".type  = "github";
  inputs."semver-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_1_1".dir   = "v1_1_1";
  inputs."semver-v1_1_1".owner = "nim-nix-pkgs";
  inputs."semver-v1_1_1".ref   = "master";
  inputs."semver-v1_1_1".repo  = "semver";
  inputs."semver-v1_1_1".type  = "github";
  inputs."semver-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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