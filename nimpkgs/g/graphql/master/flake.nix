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
  
  inputs."faststreams".owner = "nim-nix-pkgs";
  inputs."faststreams".ref   = "master";
  inputs."faststreams".repo  = "faststreams";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".owner = "nim-nix-pkgs";
  inputs."json_serialization".ref   = "master";
  inputs."json_serialization".repo  = "json_serialization";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-zlib".owner = "nim-nix-pkgs";
  inputs."https://github.com/status-im/nim-zlib".ref   = "master";
  inputs."https://github.com/status-im/nim-zlib".repo  = "https://github.com/status-im/nim-zlib";
  inputs."https://github.com/status-im/nim-zlib".type  = "github";
  inputs."https://github.com/status-im/nim-zlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-zlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-unittest2".owner = "nim-nix-pkgs";
  inputs."https://github.com/status-im/nim-unittest2".ref   = "master";
  inputs."https://github.com/status-im/nim-unittest2".repo  = "https://github.com/status-im/nim-unittest2";
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