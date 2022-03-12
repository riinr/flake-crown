{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_1_5.flake = false;
  inputs.src-ggplotnim-v0_1_5.owner = "Vindaar";
  inputs.src-ggplotnim-v0_1_5.ref   = "refs/tags/v0.1.5";
  inputs.src-ggplotnim-v0_1_5.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_1_5.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".owner = "nim-nix-pkgs";
  inputs."https://github.com/vindaar/seqmath".ref   = "master";
  inputs."https://github.com/vindaar/seqmath".repo  = "https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger".owner = "nim-nix-pkgs";
  inputs."ginger".ref   = "master";
  inputs."ginger".repo  = "ginger";
  inputs."ginger".type  = "github";
  inputs."ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."persvector".owner = "nim-nix-pkgs";
  inputs."persvector".ref   = "master";
  inputs."persvector".repo  = "persvector";
  inputs."persvector".type  = "github";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}