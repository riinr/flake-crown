{
  description = ''Nim REPL - a sandbox for testing Nim code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tnim-master.flake = false;
  inputs.src-tnim-master.ref   = "refs/heads/master";
  inputs.src-tnim-master.owner = "jlp765";
  inputs.src-tnim-master.repo  = "tnim";
  inputs.src-tnim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}