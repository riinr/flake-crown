{
  description = ''A Nim mini DSL to execute shell commands'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shell-master.flake = false;
  inputs.src-shell-master.owner = "Vindaar";
  inputs.src-shell-master.ref   = "refs/heads/master";
  inputs.src-shell-master.repo  = "shell";
  inputs.src-shell-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shell-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shell-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}