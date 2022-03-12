{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_4_6.flake = false;
  inputs.src-ggplotnim-v0_4_6.owner = "Vindaar";
  inputs.src-ggplotnim-v0_4_6.ref   = "refs/tags/v0.4.6";
  inputs.src-ggplotnim-v0_4_6.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_4_6.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".dir   = "nimpkgs/h/https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".ref   = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".repo  = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger".dir   = "nimpkgs/g/ginger";
  inputs."ginger".owner = "riinr";
  inputs."ginger".ref   = "flake-pinning";
  inputs."ginger".repo  = "flake-nimble";
  inputs."ginger".type  = "github";
  inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer".dir   = "nimpkgs/d/datamancer";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".ref   = "flake-pinning";
  inputs."datamancer".repo  = "flake-nimble";
  inputs."datamancer".type  = "github";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".dir   = "nimpkgs/s/shell";
  inputs."shell".owner = "riinr";
  inputs."shell".ref   = "flake-pinning";
  inputs."shell".repo  = "flake-nimble";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webview".dir   = "nimpkgs/w/webview";
  inputs."webview".owner = "riinr";
  inputs."webview".ref   = "flake-pinning";
  inputs."webview".repo  = "flake-nimble";
  inputs."webview".type  = "github";
  inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/scinim/scinim".dir   = "nimpkgs/h/https://github.com/scinim/scinim";
  inputs."https://github.com/scinim/scinim".owner = "riinr";
  inputs."https://github.com/scinim/scinim".ref   = "flake-pinning";
  inputs."https://github.com/scinim/scinim".repo  = "flake-nimble";
  inputs."https://github.com/scinim/scinim".type  = "github";
  inputs."https://github.com/scinim/scinim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/scinim/scinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_4_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_4_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}