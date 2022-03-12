{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unalix-v0_6_1.flake = false;
  inputs.src-unalix-v0_6_1.owner = "AmanoTeam";
  inputs.src-unalix-v0_6_1.ref   = "refs/tags/v0.6.1";
  inputs.src-unalix-v0_6_1.repo  = "Unalix-nim";
  inputs.src-unalix-v0_6_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_6_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unalix-v0_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}