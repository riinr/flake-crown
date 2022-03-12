{
  description = ''Simple AST in NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simpleAST-develop.flake = false;
  inputs.src-simpleAST-develop.owner = "lguzzon-NIM";
  inputs.src-simpleAST-develop.ref   = "refs/heads/develop";
  inputs.src-simpleAST-develop.repo  = "simpleAST";
  inputs.src-simpleAST-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simpleAST-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simpleAST-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}