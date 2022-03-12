{
  description = ''Wrapper around the GMP bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bignum-1_0_2.flake = false;
  inputs.src-bignum-1_0_2.owner = "SciNim";
  inputs.src-bignum-1_0_2.ref   = "refs/tags/1.0.2";
  inputs.src-bignum-1_0_2.repo  = "bignum";
  inputs.src-bignum-1_0_2.type  = "github";
  
  inputs."gmp".dir   = "nimpkgs/g/gmp";
  inputs."gmp".owner = "riinr";
  inputs."gmp".ref   = "flake-pinning";
  inputs."gmp".repo  = "flake-nimble";
  inputs."gmp".type  = "github";
  inputs."gmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bignum-1_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bignum-1_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}