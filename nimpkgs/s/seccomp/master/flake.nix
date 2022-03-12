{
  description = ''Linux Seccomp sandbox library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-seccomp-master.flake = false;
  inputs.src-seccomp-master.owner = "FedericoCeratto";
  inputs.src-seccomp-master.ref   = "refs/heads/master";
  inputs.src-seccomp-master.repo  = "nim-seccomp";
  inputs.src-seccomp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-seccomp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-seccomp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}