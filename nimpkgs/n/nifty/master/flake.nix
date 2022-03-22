{
  description = ''A decentralized (pseudo) package manager and script runner.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nifty-master.flake = false;
  inputs.src-nifty-master.owner = "h3rald";
  inputs.src-nifty-master.ref   = "master";
  inputs.src-nifty-master.repo  = "nifty";
  inputs.src-nifty-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nifty-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nifty-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}