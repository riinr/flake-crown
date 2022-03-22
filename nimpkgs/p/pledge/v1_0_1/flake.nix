{
  description = ''A wrapper around OpenBSD's pledge(2) systemcall for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pledge-v1_0_1.flake = false;
  inputs.src-pledge-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-pledge-v1_0_1.owner = "euantorano";
  inputs.src-pledge-v1_0_1.repo  = "pledge.nim";
  inputs.src-pledge-v1_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pledge-v1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pledge-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}