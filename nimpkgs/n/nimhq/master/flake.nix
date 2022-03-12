{
  description = ''HQ Trivia API wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhq-master.flake = false;
  inputs.src-nimhq-master.owner = "sillibird";
  inputs.src-nimhq-master.ref   = "refs/heads/master";
  inputs.src-nimhq-master.repo  = "nimhq";
  inputs.src-nimhq-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhq-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhq-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}