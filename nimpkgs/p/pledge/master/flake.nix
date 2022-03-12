{
  description = ''OpenBSDs pledge(2) for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pledge-master.flake = false;
  inputs.src-pledge-master.owner = "euantorano";
  inputs.src-pledge-master.ref   = "refs/heads/master";
  inputs.src-pledge-master.repo  = "pledge.nim";
  inputs.src-pledge-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pledge-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pledge-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}