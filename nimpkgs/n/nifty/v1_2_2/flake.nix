{
  description = ''A decentralized (pseudo) package manager and script runner.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nifty-v1_2_2.flake = false;
  inputs.src-nifty-v1_2_2.owner = "h3rald";
  inputs.src-nifty-v1_2_2.ref   = "v1_2_2";
  inputs.src-nifty-v1_2_2.repo  = "nifty";
  inputs.src-nifty-v1_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nifty-v1_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nifty-v1_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}