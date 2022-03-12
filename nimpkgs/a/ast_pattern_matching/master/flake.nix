{
  description = ''a general ast pattern matching library with a focus on correctness and good error messages'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ast_pattern_matching-master.flake = false;
  inputs.src-ast_pattern_matching-master.owner = "krux02";
  inputs.src-ast_pattern_matching-master.ref   = "refs/heads/master";
  inputs.src-ast_pattern_matching-master.repo  = "ast-pattern-matching";
  inputs.src-ast_pattern_matching-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ast_pattern_matching-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ast_pattern_matching-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}