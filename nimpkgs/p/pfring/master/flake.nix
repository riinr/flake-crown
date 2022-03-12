{
  description = ''PF_RING wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pfring-master.flake = false;
  inputs.src-pfring-master.owner = "ba0f3";
  inputs.src-pfring-master.ref   = "refs/heads/master";
  inputs.src-pfring-master.repo  = "pfring.nim";
  inputs.src-pfring-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pfring-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pfring-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}