{
  description = ''GraphQL parser, server and client implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-graphql-master.flake = false;
  inputs.src-graphql-master.owner = "status-im";
  inputs.src-graphql-master.ref   = "refs/heads/master";
  inputs.src-graphql-master.repo  = "nim-graphql";
  inputs.src-graphql-master.type  = "github";
  
  inputs."faststreams".dir   = "nimpkgs/f/faststreams";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".ref   = "flake-pinning";
  inputs."faststreams".repo  = "flake-nimble";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".dir   = "nimpkgs/j/json_serialization";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".ref   = "flake-pinning";
  inputs."json_serialization".repo  = "flake-nimble";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".dir   = "nimpkgs/c/chronicles";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".ref   = "flake-pinning";
  inputs."chronicles".repo  = "flake-nimble";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-zlib".dir   = "nimpkgs/h/https://github.com/status-im/nim-zlib";
  inputs."https://github.com/status-im/nim-zlib".owner = "riinr";
  inputs."https://github.com/status-im/nim-zlib".ref   = "flake-pinning";
  inputs."https://github.com/status-im/nim-zlib".repo  = "flake-nimble";
  inputs."https://github.com/status-im/nim-zlib".type  = "github";
  inputs."https://github.com/status-im/nim-zlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-zlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-unittest2".dir   = "nimpkgs/h/https://github.com/status-im/nim-unittest2";
  inputs."https://github.com/status-im/nim-unittest2".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2".ref   = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2".repo  = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2".type  = "github";
  inputs."https://github.com/status-im/nim-unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-graphql-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-graphql-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}