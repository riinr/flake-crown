{
  description = ''ptrace wrapper and helpers for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ptrace-master.flake = false;
  inputs.src-ptrace-master.ref   = "refs/heads/master";
  inputs.src-ptrace-master.owner = "ba0f3";
  inputs.src-ptrace-master.repo  = "ptrace.nim";
  inputs.src-ptrace-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ptrace-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ptrace-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}