{
  description = ''A collection of numerical methods written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numericalnim-v0_1.flake = false;
  inputs.src-numericalnim-v0_1.owner = "SciNim";
  inputs.src-numericalnim-v0_1.ref   = "refs/tags/v0.1";
  inputs.src-numericalnim-v0_1.repo  = "numericalnim";
  inputs.src-numericalnim-v0_1.type  = "github";
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numericalnim-v0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-numericalnim-v0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}