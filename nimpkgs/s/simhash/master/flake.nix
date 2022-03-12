{
  description = ''Nim implementation of simhash algoritim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simhash-master.flake = false;
  inputs.src-simhash-master.owner = "bung87";
  inputs.src-simhash-master.ref   = "refs/heads/master";
  inputs.src-simhash-master.repo  = "simhash-nim";
  inputs.src-simhash-master.type  = "github";
  
  inputs."lc".dir   = "nimpkgs/l/lc";
  inputs."lc".owner = "riinr";
  inputs."lc".ref   = "flake-pinning";
  inputs."lc".repo  = "flake-nimble";
  inputs."lc".type  = "github";
  inputs."lc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simhash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simhash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}