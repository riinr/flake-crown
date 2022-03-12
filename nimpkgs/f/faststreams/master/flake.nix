{
  description = ''Nearly zero-overhead input/output streams for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-faststreams-master.flake = false;
  inputs.src-faststreams-master.owner = "status-im";
  inputs.src-faststreams-master.ref   = "refs/heads/master";
  inputs.src-faststreams-master.repo  = "nim-faststreams";
  inputs.src-faststreams-master.type  = "github";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils".dir   = "nimpkgs/t/testutils";
  inputs."testutils".owner = "riinr";
  inputs."testutils".ref   = "flake-pinning";
  inputs."testutils".repo  = "flake-nimble";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".dir   = "nimpkgs/c/chronos";
  inputs."chronos".owner = "riinr";
  inputs."chronos".ref   = "flake-pinning";
  inputs."chronos".repo  = "flake-nimble";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-faststreams-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-faststreams-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}