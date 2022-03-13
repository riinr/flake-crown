{
  description = ''A teminal othello (reversi) in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimothello-v1_0_0.flake = false;
  inputs.src-nimothello-v1_0_0.owner = "jiro4989";
  inputs.src-nimothello-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-nimothello-v1_0_0.repo  = "nimothello";
  inputs.src-nimothello-v1_0_0.type  = "github";
  
  inputs."illwill".owner = "nim-nix-pkgs";
  inputs."illwill".ref   = "master";
  inputs."illwill".repo  = "illwill";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimothello-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimothello-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}