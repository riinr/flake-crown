{
  description = ''C Tox core wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-toxcore-master.flake = false;
  inputs.src-toxcore-master.owner = "~ehmry";
  inputs.src-toxcore-master.ref   = "refs/heads/master";
  inputs.src-toxcore-master.repo  = "nim_tox";
  inputs.src-toxcore-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-toxcore-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-toxcore-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}