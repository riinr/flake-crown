{
  description = ''Asynchronous PostgreSQL driver for Nim Language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncpg-master".dir   = "master";
  inputs."asyncpg-master".owner = "nim-nix-pkgs";
  inputs."asyncpg-master".ref   = "master";
  inputs."asyncpg-master".repo  = "asyncpg";
  inputs."asyncpg-master".type  = "github";
  inputs."asyncpg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncpg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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