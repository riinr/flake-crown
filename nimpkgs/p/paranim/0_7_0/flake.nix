{
  description = ''A game library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paranim-0_7_0.flake = false;
  inputs.src-paranim-0_7_0.owner = "paranim";
  inputs.src-paranim-0_7_0.ref   = "refs/tags/0.7.0";
  inputs.src-paranim-0_7_0.repo  = "paranim";
  inputs.src-paranim-0_7_0.type  = "github";
  
  inputs."nimgl".owner = "nim-nix-pkgs";
  inputs."nimgl".ref   = "master";
  inputs."nimgl".repo  = "nimgl";
  inputs."nimgl".type  = "github";
  inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm".owner = "nim-nix-pkgs";
  inputs."glm".ref   = "master";
  inputs."glm".repo  = "glm";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paranim-0_7_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paranim-0_7_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}