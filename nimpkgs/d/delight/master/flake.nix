{
  description = ''Engine-agnostic library for computing 2D raycasted lights'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-delight-master.flake = false;
  inputs.src-delight-master.owner = "liquid600pgm";
  inputs.src-delight-master.ref   = "refs/heads/master";
  inputs.src-delight-master.repo  = "delight";
  inputs.src-delight-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-delight-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-delight-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}