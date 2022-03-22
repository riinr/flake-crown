{
  description = ''Seccomp (Linux sandboxing) adapter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-seccomp-0_2_1.flake = false;
  inputs.src-seccomp-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-seccomp-0_2_1.owner = "FedericoCeratto";
  inputs.src-seccomp-0_2_1.repo  = "nim-seccomp";
  inputs.src-seccomp-0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-seccomp-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-seccomp-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}