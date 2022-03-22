{
  description = ''A miniblink library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-miniblink-master.flake = false;
  inputs.src-miniblink-master.ref   = "refs/heads/master";
  inputs.src-miniblink-master.owner = "lihf8515";
  inputs.src-miniblink-master.repo  = "miniblink";
  inputs.src-miniblink-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-miniblink-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-miniblink-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}