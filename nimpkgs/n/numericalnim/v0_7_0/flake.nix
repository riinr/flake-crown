{
  description = ''A collection of numerical methods written in Nim'';
  inputs.src-numericalnim-v0_7_0.flake = false;
  inputs.src-numericalnim-v0_7_0.type = "github";
  inputs.src-numericalnim-v0_7_0.owner = "SciNim";
  inputs.src-numericalnim-v0_7_0.repo = "numericalnim";
  inputs.src-numericalnim-v0_7_0.ref = "refs/tags/v0.7.0";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."https://github.com/hugogranstrom/cdt".url = "path:../../../h/https://github.com/hugogranstrom/cdt";
  inputs."https://github.com/hugogranstrom/cdt".type = "github";
  inputs."https://github.com/hugogranstrom/cdt".owner = "riinr";
  inputs."https://github.com/hugogranstrom/cdt".repo = "flake-nimble";
  inputs."https://github.com/hugogranstrom/cdt".ref = "flake-pinning";
  inputs."https://github.com/hugogranstrom/cdt".dir = "nimpkgs/h/https://github.com/hugogranstrom/cdt";

  outputs = { self, nixpkgs, src-numericalnim-v0_7_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numericalnim-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numericalnim-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}