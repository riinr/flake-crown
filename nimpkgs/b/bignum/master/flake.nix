{
  description = ''Wrapper around the GMP bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bignum-master.flake = false;
  inputs.src-bignum-master.ref   = "refs/heads/master";
  inputs.src-bignum-master.owner = "SciNim";
  inputs.src-bignum-master.repo  = "bignum";
  inputs.src-bignum-master.type  = "github";
  
  inputs."gmp".owner = "nim-nix-pkgs";
  inputs."gmp".ref   = "master";
  inputs."gmp".repo  = "gmp";
  inputs."gmp".dir   = "v0_2_5";
  inputs."gmp".type  = "github";
  inputs."gmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bignum-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bignum-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}