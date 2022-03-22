{
  description = ''Simple AST in NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simpleAST-master.flake = false;
  inputs.src-simpleAST-master.ref   = "refs/heads/master";
  inputs.src-simpleAST-master.owner = "lguzzon-NIM";
  inputs.src-simpleAST-master.repo  = "simpleAST";
  inputs.src-simpleAST-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simpleAST-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}