{
  description = ''Protobuf implementation compatible with the nim-serialization framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protobuf_serialization-master.flake = false;
  inputs.src-protobuf_serialization-master.owner = "status-im";
  inputs.src-protobuf_serialization-master.ref   = "refs/heads/master";
  inputs.src-protobuf_serialization-master.repo  = "nim-protobuf-serialization";
  inputs.src-protobuf_serialization-master.type  = "github";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faststreams".dir   = "nimpkgs/f/faststreams";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".ref   = "flake-pinning";
  inputs."faststreams".repo  = "flake-nimble";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serialization".dir   = "nimpkgs/s/serialization";
  inputs."serialization".owner = "riinr";
  inputs."serialization".ref   = "flake-pinning";
  inputs."serialization".repo  = "flake-nimble";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."combparser".dir   = "nimpkgs/c/combparser";
  inputs."combparser".owner = "riinr";
  inputs."combparser".ref   = "flake-pinning";
  inputs."combparser".repo  = "flake-nimble";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protobuf_serialization-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-protobuf_serialization-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}