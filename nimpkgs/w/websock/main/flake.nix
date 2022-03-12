{
  description = '' Websocket server and client implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-websock-main.flake = false;
  inputs.src-websock-main.owner = "status-im";
  inputs.src-websock-main.ref   = "refs/heads/main";
  inputs.src-websock-main.repo  = "nim-websock";
  inputs.src-websock-main.type  = "github";
  
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
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest".dir   = "nimpkgs/a/asynctest";
  inputs."asynctest".owner = "riinr";
  inputs."asynctest".ref   = "flake-pinning";
  inputs."asynctest".repo  = "flake-nimble";
  inputs."asynctest".type  = "github";
  inputs."asynctest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bearssl".dir   = "nimpkgs/b/bearssl";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".ref   = "flake-pinning";
  inputs."bearssl".repo  = "flake-nimble";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zlib".dir   = "nimpkgs/z/zlib";
  inputs."zlib".owner = "riinr";
  inputs."zlib".ref   = "flake-pinning";
  inputs."zlib".repo  = "flake-nimble";
  inputs."zlib".type  = "github";
  inputs."zlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-websock-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-websock-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}