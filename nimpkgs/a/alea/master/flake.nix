{
  description = ''Define and compose random variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alea-master.flake = false;
  inputs.src-alea-master.owner = "andreaferretti";
  inputs.src-alea-master.ref   = "refs/heads/master";
  inputs.src-alea-master.repo  = "alea";
  inputs.src-alea-master.type  = "github";
  
  inputs."random".dir   = "nimpkgs/r/random";
  inputs."random".owner = "riinr";
  inputs."random".ref   = "flake-pinning";
  inputs."random".repo  = "flake-nimble";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alea-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-alea-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}