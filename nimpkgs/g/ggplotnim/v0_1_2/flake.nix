{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ggplotnim-v0_1_2.flake = false;
  inputs.src-ggplotnim-v0_1_2.owner = "Vindaar";
  inputs.src-ggplotnim-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-ggplotnim-v0_1_2.repo  = "ggplotnim";
  inputs.src-ggplotnim-v0_1_2.type  = "github";
  
  inputs."persvector".owner = "nim-nix-pkgs";
  inputs."persvector".ref   = "master";
  inputs."persvector".repo  = "persvector";
  inputs."persvector".type  = "github";
  inputs."persvector".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persvector".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ggplotnim-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ggplotnim-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}