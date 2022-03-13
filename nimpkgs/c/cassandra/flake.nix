{
  description = ''Bindings to Cassandra DB driver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cassandra-master".dir   = "master";
  inputs."cassandra-master".owner = "nim-nix-pkgs";
  inputs."cassandra-master".ref   = "master";
  inputs."cassandra-master".repo  = "cassandra";
  inputs."cassandra-master".type  = "github";
  inputs."cassandra-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cassandra-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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