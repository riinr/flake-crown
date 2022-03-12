{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_1_3.flake = false;
  inputs.src-ggplotnim-v0_1_3.owner = "Vindaar";
  inputs.src-ggplotnim-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-ggplotnim-v0_1_3.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_1_3.type  = "github";
  
  inputs."https://github.com/vindaar/seqmath".owner = "nim-nix-pkgs";
  inputs."https://github.com/vindaar/seqmath".ref   = "master";
  inputs."https://github.com/vindaar/seqmath".repo  = "https://github.com/vindaar/seqmath";
  inputs."https://github.com/vindaar/seqmath".type  = "github";
  inputs."https://github.com/vindaar/seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/vindaar/ginger".owner = "nim-nix-pkgs";
  inputs."https://github.com/vindaar/ginger".ref   = "master";
  inputs."https://github.com/vindaar/ginger".repo  = "https://github.com/vindaar/ginger";
  inputs."https://github.com/vindaar/ginger".type  = "github";
  inputs."https://github.com/vindaar/ginger".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/vindaar/ginger".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."persvector".owner = "nim-nix-pkgs";
  inputs."persvector".ref   = "master";
  inputs."persvector".repo  = "persvector";
  inputs."persvector".type  = "github";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}