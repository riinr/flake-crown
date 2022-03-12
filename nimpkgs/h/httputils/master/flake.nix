{
  description = ''Common utilities for implementing HTTP servers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httputils-master.flake = false;
  inputs.src-httputils-master.owner = "status-im";
  inputs.src-httputils-master.ref   = "refs/heads/master";
  inputs.src-httputils-master.repo  = "nim-http-utils";
  inputs.src-httputils-master.type  = "github";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2".dir   = "nimpkgs/u/unittest2";
  inputs."unittest2".owner = "riinr";
  inputs."unittest2".ref   = "flake-pinning";
  inputs."unittest2".repo  = "flake-nimble";
  inputs."unittest2".type  = "github";
  inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httputils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httputils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}