{
  description = ''Database schema migration library for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dbschema-master".dir   = "master";
  inputs."dbschema-master".owner = "nim-nix-pkgs";
  inputs."dbschema-master".ref   = "master";
  inputs."dbschema-master".repo  = "dbschema";
  inputs."dbschema-master".type  = "github";
  inputs."dbschema-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbschema-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dbschema-v0_1_1".dir   = "v0_1_1";
  inputs."dbschema-v0_1_1".owner = "nim-nix-pkgs";
  inputs."dbschema-v0_1_1".ref   = "master";
  inputs."dbschema-v0_1_1".repo  = "dbschema";
  inputs."dbschema-v0_1_1".type  = "github";
  inputs."dbschema-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbschema-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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