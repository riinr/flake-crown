{
  description = ''The parsesql module implements a high performance SQL file parser. It parses PostgreSQL syntax and the SQL ANSI standard.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsesql-master".url = "path:./master";
  inputs."parsesql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsesql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsesql-v0_1_1".url = "path:./v0_1_1";
  inputs."parsesql-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsesql-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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