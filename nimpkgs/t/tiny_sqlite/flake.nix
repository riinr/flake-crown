{
  description = ''A thin SQLite wrapper with proper type safety'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tiny_sqlite-master".dir   = "master";
  inputs."tiny_sqlite-master".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite-master".ref   = "master";
  inputs."tiny_sqlite-master".repo  = "tiny_sqlite";
  inputs."tiny_sqlite-master".type  = "github";
  inputs."tiny_sqlite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite-v0_1_1".dir   = "v0_1_1";
  inputs."tiny_sqlite-v0_1_1".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite-v0_1_1".ref   = "master";
  inputs."tiny_sqlite-v0_1_1".repo  = "tiny_sqlite";
  inputs."tiny_sqlite-v0_1_1".type  = "github";
  inputs."tiny_sqlite-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite-v0_1_2".dir   = "v0_1_2";
  inputs."tiny_sqlite-v0_1_2".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite-v0_1_2".ref   = "master";
  inputs."tiny_sqlite-v0_1_2".repo  = "tiny_sqlite";
  inputs."tiny_sqlite-v0_1_2".type  = "github";
  inputs."tiny_sqlite-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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