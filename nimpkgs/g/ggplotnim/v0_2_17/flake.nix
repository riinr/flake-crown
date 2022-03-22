{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_2_17.flake = false;
  inputs.src-ggplotnim-v0_2_17.ref   = "refs/tags/v0.2.17";
  inputs.src-ggplotnim-v0_2_17.owner = "Vindaar";
  inputs.src-ggplotnim-v0_2_17.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_2_17.type  = "github";
  
  inputs."ginger".owner = "nim-nix-pkgs";
  inputs."ginger".ref   = "master";
  inputs."ginger".repo  = "ginger";
  inputs."ginger".dir   = "v0_3_11";
  inputs."ginger".type  = "github";
  inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."persvector".owner = "nim-nix-pkgs";
  inputs."persvector".ref   = "master";
  inputs."persvector".repo  = "persvector";
  inputs."persvector".dir   = "v1_0_0";
  inputs."persvector".type  = "github";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell".owner = "nim-nix-pkgs";
  inputs."shell".ref   = "master";
  inputs."shell".repo  = "shell";
  inputs."shell".dir   = "v0_4_4";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_2_17"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_2_17";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}