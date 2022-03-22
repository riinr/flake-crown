{
  description = ''SDPK bind for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spdk-master.flake = false;
  inputs.src-spdk-master.ref   = "refs/heads/master";
  inputs.src-spdk-master.owner = "nimscale";
  inputs.src-spdk-master.repo  = "spdk";
  inputs.src-spdk-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spdk-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spdk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}