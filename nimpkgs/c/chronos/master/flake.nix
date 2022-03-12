{
  description = ''An efficient library for asynchronous programming'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronos-master.flake = false;
  inputs.src-chronos-master.owner = "status-im";
  inputs.src-chronos-master.ref   = "refs/heads/master";
  inputs.src-chronos-master.repo  = "nim-chronos";
  inputs.src-chronos-master.type  = "github";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bearssl".dir   = "nimpkgs/b/bearssl";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".ref   = "flake-pinning";
  inputs."bearssl".repo  = "flake-nimble";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httputils".dir   = "nimpkgs/h/httputils";
  inputs."httputils".owner = "riinr";
  inputs."httputils".ref   = "flake-pinning";
  inputs."httputils".repo  = "flake-nimble";
  inputs."httputils".type  = "github";
  inputs."httputils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-unittest2.git".dir   = "nimpkgs/h/https://github.com/status-im/nim-unittest2.git";
  inputs."https://github.com/status-im/nim-unittest2.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-unittest2.git".ref   = "flake-pinning";
  inputs."https://github.com/status-im/nim-unittest2.git".repo  = "flake-nimble";
  inputs."https://github.com/status-im/nim-unittest2.git".type  = "github";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronos-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronos-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}