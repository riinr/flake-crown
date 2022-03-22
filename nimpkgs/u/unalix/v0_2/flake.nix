{
  description = ''Small, dependency-free, fast Nim package for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unalix-v0_2.flake = false;
  inputs.src-unalix-v0_2.ref   = "refs/tags/v0.2";
  inputs.src-unalix-v0_2.owner = "AmanoTeam";
  inputs.src-unalix-v0_2.repo  = "Unalix-nim";
  inputs.src-unalix-v0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unalix-v0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}