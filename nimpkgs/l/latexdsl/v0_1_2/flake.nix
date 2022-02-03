{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-v0_1_2.flake = false;
  inputs.src-latexdsl-v0_1_2.type = "github";
  inputs.src-latexdsl-v0_1_2.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_2.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-latexdsl-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}