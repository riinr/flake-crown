{
  description = ''A game library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paranim-0_8_0.flake = false;
  inputs.src-paranim-0_8_0.owner = "paranim";
  inputs.src-paranim-0_8_0.ref   = "refs/tags/0.8.0";
  inputs.src-paranim-0_8_0.repo  = "paranim";
  inputs.src-paranim-0_8_0.type  = "github";
  
  inputs."nimgl".dir   = "nimpkgs/n/nimgl";
  inputs."nimgl".owner = "riinr";
  inputs."nimgl".ref   = "flake-pinning";
  inputs."nimgl".repo  = "flake-nimble";
  inputs."nimgl".type  = "github";
  inputs."nimgl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm".dir   = "nimpkgs/g/glm";
  inputs."glm".owner = "riinr";
  inputs."glm".ref   = "flake-pinning";
  inputs."glm".repo  = "flake-nimble";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paranim-0_8_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paranim-0_8_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}