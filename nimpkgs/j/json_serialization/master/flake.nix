{
  description = ''Flexible JSON serialization not relying on run-time type information'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-json_serialization-master.flake = false;
  inputs.src-json_serialization-master.owner = "status-im";
  inputs.src-json_serialization-master.ref   = "refs/heads/master";
  inputs.src-json_serialization-master.repo  = "nim-json-serialization";
  inputs.src-json_serialization-master.type  = "github";
  
  inputs."serialization".dir   = "nimpkgs/s/serialization";
  inputs."serialization".owner = "riinr";
  inputs."serialization".ref   = "flake-pinning";
  inputs."serialization".repo  = "flake-nimble";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-json_serialization-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-json_serialization-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}