{
  description = ''A DSL to write LaTeX in Nim. No idea who wants that.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-latexdsl-v0_1_7.flake = false;
  inputs.src-latexdsl-v0_1_7.ref   = "refs/tags/v0.1.7";
  inputs.src-latexdsl-v0_1_7.owner = "Vindaar";
  inputs.src-latexdsl-v0_1_7.repo  = "LatexDSL";
  inputs.src-latexdsl-v0_1_7.type  = "github";
  
  inputs."datamancer".owner = "nim-nix-pkgs";
  inputs."datamancer".ref   = "master";
  inputs."datamancer".repo  = "datamancer";
  inputs."datamancer".dir   = "v0_2_3";
  inputs."datamancer".type  = "github";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-latexdsl-v0_1_7"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-latexdsl-v0_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}