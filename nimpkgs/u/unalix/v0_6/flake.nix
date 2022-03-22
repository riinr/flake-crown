{
  description = ''Small, dependency-free, fast Nim package for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unalix-v0_6.flake = false;
  inputs.src-unalix-v0_6.ref   = "refs/tags/v0.6";
  inputs.src-unalix-v0_6.owner = "AmanoTeam";
  inputs.src-unalix-v0_6.repo  = "Unalix-nim";
  inputs.src-unalix-v0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unalix-v0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}