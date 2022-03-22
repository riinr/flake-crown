{
  description = ''A poker hand evaluator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pokereval-master.flake = false;
  inputs.src-pokereval-master.ref   = "refs/heads/master";
  inputs.src-pokereval-master.owner = "jasonlu7";
  inputs.src-pokereval-master.repo  = "pokereval";
  inputs.src-pokereval-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pokereval-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pokereval-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}