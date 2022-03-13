{
  description = ''Postgres utility functions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pg_util-master".dir   = "master";
  inputs."pg_util-master".owner = "nim-nix-pkgs";
  inputs."pg_util-master".ref   = "master";
  inputs."pg_util-master".repo  = "pg_util";
  inputs."pg_util-master".type  = "github";
  inputs."pg_util-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg_util-v0_1_0".dir   = "v0_1_0";
  inputs."pg_util-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pg_util-v0_1_0".ref   = "master";
  inputs."pg_util-v0_1_0".repo  = "pg_util";
  inputs."pg_util-v0_1_0".type  = "github";
  inputs."pg_util-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg_util-v0_1_1".dir   = "v0_1_1";
  inputs."pg_util-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pg_util-v0_1_1".ref   = "master";
  inputs."pg_util-v0_1_1".repo  = "pg_util";
  inputs."pg_util-v0_1_1".type  = "github";
  inputs."pg_util-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg_util-v0_1_2".dir   = "v0_1_2";
  inputs."pg_util-v0_1_2".owner = "nim-nix-pkgs";
  inputs."pg_util-v0_1_2".ref   = "master";
  inputs."pg_util-v0_1_2".repo  = "pg_util";
  inputs."pg_util-v0_1_2".type  = "github";
  inputs."pg_util-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pg_util-v0_1_3".dir   = "v0_1_3";
  inputs."pg_util-v0_1_3".owner = "nim-nix-pkgs";
  inputs."pg_util-v0_1_3".ref   = "master";
  inputs."pg_util-v0_1_3".repo  = "pg_util";
  inputs."pg_util-v0_1_3".type  = "github";
  inputs."pg_util-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pg_util-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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