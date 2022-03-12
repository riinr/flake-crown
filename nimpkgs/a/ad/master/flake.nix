{
  description = ''A simple RPN calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ad-master.flake = false;
  inputs.src-ad-master.owner = "subsetpark";
  inputs.src-ad-master.ref   = "refs/heads/master";
  inputs.src-ad-master.repo  = "ad";
  inputs.src-ad-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ad-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ad-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}