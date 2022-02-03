{
  description = ''A collection of numerical methods written in Nim'';
  inputs.src-numericalnim-v0_6_2.flake = false;
  inputs.src-numericalnim-v0_6_2.type = "github";
  inputs.src-numericalnim-v0_6_2.owner = "SciNim";
  inputs.src-numericalnim-v0_6_2.repo = "numericalnim";
  inputs.src-numericalnim-v0_6_2.ref = "refs/tags/v0.6.2";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-numericalnim-v0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numericalnim-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numericalnim-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}