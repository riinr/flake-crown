{
  description = ''GraphQL parser, server and client implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."graphql-master".dir   = "master";
  inputs."graphql-master".owner = "nim-nix-pkgs";
  inputs."graphql-master".ref   = "master";
  inputs."graphql-master".repo  = "graphql";
  inputs."graphql-master".type  = "github";
  inputs."graphql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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