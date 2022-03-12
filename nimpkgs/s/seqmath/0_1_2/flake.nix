{
  description = ''Nim math library for sequences and nested sequences (extends math library)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-seqmath-0_1_2.flake = false;
  inputs.src-seqmath-0_1_2.owner = "jlp765";
  inputs.src-seqmath-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-seqmath-0_1_2.repo  = "seqmath";
  inputs.src-seqmath-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-seqmath-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-seqmath-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}