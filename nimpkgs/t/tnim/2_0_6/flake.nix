{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tnim-2_0_6.flake = false;
  inputs.src-tnim-2_0_6.owner = "jlp765";
  inputs.src-tnim-2_0_6.ref   = "refs/tags/2.0.6";
  inputs.src-tnim-2_0_6.repo  = "tnim";
  inputs.src-tnim-2_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tnim-2_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tnim-2_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}