{
  description = ''Bindings to BearSSL library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bearssl-master.flake = false;
  inputs.src-bearssl-master.owner = "status-im";
  inputs.src-bearssl-master.ref   = "refs/heads/master";
  inputs.src-bearssl-master.repo  = "nim-bearssl";
  inputs.src-bearssl-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bearssl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bearssl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}