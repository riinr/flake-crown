{
  description = ''A game library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paranim-master.flake = false;
  inputs.src-paranim-master.owner = "paranim";
  inputs.src-paranim-master.ref   = "refs/heads/master";
  inputs.src-paranim-master.repo  = "paranim";
  inputs.src-paranim-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paranim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paranim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}