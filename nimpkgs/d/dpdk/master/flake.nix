{
  description = ''Library for fast packet processing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dpdk-master.flake = false;
  inputs.src-dpdk-master.owner = "nimscale";
  inputs.src-dpdk-master.ref   = "refs/heads/master";
  inputs.src-dpdk-master.repo  = "dpdk";
  inputs.src-dpdk-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dpdk-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dpdk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}