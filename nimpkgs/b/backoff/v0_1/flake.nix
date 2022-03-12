{
  description = ''Implementation of exponential backoff for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-backoff-v0_1.flake = false;
  inputs.src-backoff-v0_1.owner = "CORDEA";
  inputs.src-backoff-v0_1.ref   = "refs/tags/v0.1";
  inputs.src-backoff-v0_1.repo  = "backoff";
  inputs.src-backoff-v0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-backoff-v0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-backoff-v0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}