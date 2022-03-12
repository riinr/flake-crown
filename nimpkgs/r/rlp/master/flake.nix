{
  description = ''Deprecated RLP serialization library for Nim (now part of the 'eth' module)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rlp-master.flake = false;
  inputs.src-rlp-master.owner = "status-im";
  inputs.src-rlp-master.ref   = "refs/heads/master";
  inputs.src-rlp-master.repo  = "nim-rlp";
  inputs.src-rlp-master.type  = "github";
  
  inputs."ranges".dir   = "nimpkgs/r/ranges";
  inputs."ranges".owner = "riinr";
  inputs."ranges".ref   = "flake-pinning";
  inputs."ranges".repo  = "flake-nimble";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rlp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rlp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}