{
  description = ''A DSL to generate LaTeX from Nim'';
  inputs.src-latexdsl-v0_1_4.flake = false;
  inputs.src-latexdsl-v0_1_4.type = "github";
  inputs.src-latexdsl-v0_1_4.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_4.repo = "LatexDSL";
  inputs.src-latexdsl-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-latexdsl-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latexdsl-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-latexdsl-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}