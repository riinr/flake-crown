{
  description = ''Simple AST in NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simpleAST-1_1_4.flake = false;
  inputs.src-simpleAST-1_1_4.ref   = "refs/tags/1.1.4";
  inputs.src-simpleAST-1_1_4.owner = "lguzzon-NIM";
  inputs.src-simpleAST-1_1_4.repo  = "simpleAST";
  inputs.src-simpleAST-1_1_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-1_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simpleAST-1_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}