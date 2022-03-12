{
  description = ''A DSL to generate LaTeX from Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-latexdsl-v0_1_1.flake = false;
  inputs.src-latexdsl-v0_1_1.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-latexdsl-v0_1_1.repo  = "LatexDSL";
  inputs.src-latexdsl-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-latexdsl-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}