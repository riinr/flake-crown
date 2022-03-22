{
  description = ''Nim REPL - a sandbox for testing Nim code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tnim-v2_0_6.flake = false;
  inputs.src-tnim-v2_0_6.ref   = "refs/tags/v2.0.6";
  inputs.src-tnim-v2_0_6.owner = "jlp765";
  inputs.src-tnim-v2_0_6.repo  = "tnim";
  inputs.src-tnim-v2_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tnim-v2_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tnim-v2_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}