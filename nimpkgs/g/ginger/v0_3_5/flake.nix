{
  description = ''A Grid (R) like package in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ginger-v0_3_5.flake = false;
  inputs.src-ginger-v0_3_5.owner = "Vindaar";
  inputs.src-ginger-v0_3_5.ref   = "refs/tags/v0.3.5";
  inputs.src-ginger-v0_3_5.repo  = "ginger";
  inputs.src-ginger-v0_3_5.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/vindaar/seqmath".dir   = "nimpkgs/h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".ref   = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".repo  = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo".dir   = "nimpkgs/c/cairo";
  inputs."cairo".owner = "riinr";
  inputs."cairo".ref   = "flake-pinning";
  inputs."cairo".repo  = "flake-nimble";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/vindaar/latexdsl".dir   = "nimpkgs/h/https://github.com/vindaar/latexdsl";
  inputs."https://github.com/vindaar/latexdsl".owner = "riinr";
  inputs."https://github.com/vindaar/latexdsl".ref   = "flake-pinning";
  inputs."https://github.com/vindaar/latexdsl".repo  = "flake-nimble";
  inputs."https://github.com/vindaar/latexdsl".type  = "github";
  inputs."https://github.com/vindaar/latexdsl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/latexdsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".dir   = "nimpkgs/s/shell";
  inputs."shell".owner = "riinr";
  inputs."shell".ref   = "flake-pinning";
  inputs."shell".repo  = "flake-nimble";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ginger-v0_3_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ginger-v0_3_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}