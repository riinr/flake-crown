{
  description = ''A simple RPN calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ad-0_7_4.flake = false;
  inputs.src-ad-0_7_4.owner = "subsetpark";
  inputs.src-ad-0_7_4.ref   = "refs/tags/0.7.4";
  inputs.src-ad-0_7_4.repo  = "ad";
  inputs.src-ad-0_7_4.type  = "github";
  
  inputs."bignum".dir   = "nimpkgs/b/bignum";
  inputs."bignum".owner = "riinr";
  inputs."bignum".ref   = "flake-pinning";
  inputs."bignum".repo  = "flake-nimble";
  inputs."bignum".type  = "github";
  inputs."bignum".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bignum".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ad-0_7_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ad-0_7_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}