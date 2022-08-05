{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_5_3.flake = false;
  inputs.src-ggplotnim-v0_5_3.ref   = "refs/tags/v0.5.3";
  inputs.src-ggplotnim-v0_5_3.owner = "Vindaar";
  inputs.src-ggplotnim-v0_5_3.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_5_3.type  = "github";
  
  inputs."github-vindaar-seqmath".owner = "nim-nix-pkgs";
  inputs."github-vindaar-seqmath".ref   = "master";
  inputs."github-vindaar-seqmath".repo  = "github-vindaar-seqmath";
  inputs."github-vindaar-seqmath".dir   = "v0_1_15";
  inputs."github-vindaar-seqmath".type  = "github";
  inputs."github-vindaar-seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-vindaar-seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger".owner = "nim-nix-pkgs";
  inputs."ginger".ref   = "master";
  inputs."ginger".repo  = "ginger";
  inputs."ginger".dir   = "v0_3_13";
  inputs."ginger".type  = "github";
  inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer".owner = "nim-nix-pkgs";
  inputs."datamancer".ref   = "master";
  inputs."datamancer".repo  = "datamancer";
  inputs."datamancer".dir   = "v0_3_4";
  inputs."datamancer".type  = "github";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_15";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".owner = "nim-nix-pkgs";
  inputs."shell".ref   = "master";
  inputs."shell".repo  = "shell";
  inputs."shell".dir   = "v0_4_4";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webview".owner = "nim-nix-pkgs";
  inputs."webview".ref   = "master";
  inputs."webview".repo  = "webview";
  inputs."webview".dir   = "master";
  inputs."webview".type  = "github";
  inputs."webview".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webview".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim".owner = "nim-nix-pkgs";
  inputs."scinim".ref   = "master";
  inputs."scinim".repo  = "scinim";
  inputs."scinim".dir   = "v0_2_3";
  inputs."scinim".type  = "github";
  inputs."scinim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_5_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_5_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}