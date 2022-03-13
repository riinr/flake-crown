{
  description = ''A SQLbuilder with support for NULL values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sqlbuilder-master".dir   = "master";
  inputs."sqlbuilder-master".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-master".ref   = "master";
  inputs."sqlbuilder-master".repo  = "sqlbuilder";
  inputs."sqlbuilder-master".type  = "github";
  inputs."sqlbuilder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_1_1".dir   = "v0_1_1";
  inputs."sqlbuilder-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-v0_1_1".ref   = "master";
  inputs."sqlbuilder-v0_1_1".repo  = "sqlbuilder";
  inputs."sqlbuilder-v0_1_1".type  = "github";
  inputs."sqlbuilder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_1_2".dir   = "v0_1_2";
  inputs."sqlbuilder-v0_1_2".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-v0_1_2".ref   = "master";
  inputs."sqlbuilder-v0_1_2".repo  = "sqlbuilder";
  inputs."sqlbuilder-v0_1_2".type  = "github";
  inputs."sqlbuilder-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_2_0".dir   = "v0_2_0";
  inputs."sqlbuilder-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-v0_2_0".ref   = "master";
  inputs."sqlbuilder-v0_2_0".repo  = "sqlbuilder";
  inputs."sqlbuilder-v0_2_0".type  = "github";
  inputs."sqlbuilder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_3_0".dir   = "v0_3_0";
  inputs."sqlbuilder-v0_3_0".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-v0_3_0".ref   = "master";
  inputs."sqlbuilder-v0_3_0".repo  = "sqlbuilder";
  inputs."sqlbuilder-v0_3_0".type  = "github";
  inputs."sqlbuilder-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_3_1".dir   = "v0_3_1";
  inputs."sqlbuilder-v0_3_1".owner = "nim-nix-pkgs";
  inputs."sqlbuilder-v0_3_1".ref   = "master";
  inputs."sqlbuilder-v0_3_1".repo  = "sqlbuilder";
  inputs."sqlbuilder-v0_3_1".type  = "github";
  inputs."sqlbuilder-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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