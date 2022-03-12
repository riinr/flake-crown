{
  description = ''Nim library for implementing JSON-RPC clients and servers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-json_rpc-master.flake = false;
  inputs.src-json_rpc-master.owner = "status-im";
  inputs.src-json_rpc-master.ref   = "refs/heads/master";
  inputs.src-json_rpc-master.repo  = "nim-json-rpc";
  inputs.src-json_rpc-master.type  = "github";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".dir   = "nimpkgs/c/chronos";
  inputs."chronos".owner = "riinr";
  inputs."chronos".ref   = "flake-pinning";
  inputs."chronos".repo  = "flake-nimble";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httputils".dir   = "nimpkgs/h/httputils";
  inputs."httputils".owner = "riinr";
  inputs."httputils".ref   = "flake-pinning";
  inputs."httputils".repo  = "flake-nimble";
  inputs."httputils".type  = "github";
  inputs."httputils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".dir   = "nimpkgs/c/chronicles";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".ref   = "flake-pinning";
  inputs."chronicles".repo  = "flake-nimble";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/news".dir   = "nimpkgs/h/https://github.com/status-im/news";
  inputs."https://github.com/status-im/news".owner = "riinr";
  inputs."https://github.com/status-im/news".ref   = "flake-pinning";
  inputs."https://github.com/status-im/news".repo  = "flake-nimble";
  inputs."https://github.com/status-im/news".type  = "github";
  inputs."https://github.com/status-im/news".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/news".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websock".dir   = "nimpkgs/w/websock";
  inputs."websock".owner = "riinr";
  inputs."websock".ref   = "flake-pinning";
  inputs."websock".repo  = "flake-nimble";
  inputs."websock".type  = "github";
  inputs."websock".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websock".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".dir   = "nimpkgs/j/json_serialization";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".ref   = "flake-pinning";
  inputs."json_serialization".repo  = "flake-nimble";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-json_rpc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-json_rpc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}