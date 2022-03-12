{
  description = ''A DSL to generate LaTeX from Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-latexdsl-master.flake = false;
  inputs.src-latexdsl-master.owner = "Vindaar";
  inputs.src-latexdsl-master.ref   = "refs/heads/master";
  inputs.src-latexdsl-master.repo  = "LatexDSL";
  inputs.src-latexdsl-master.type  = "github";
  
  inputs."datamancer".dir   = "nimpkgs/d/datamancer";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".ref   = "flake-pinning";
  inputs."datamancer".repo  = "flake-nimble";
  inputs."datamancer".type  = "github";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-latexdsl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}