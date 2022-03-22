{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-antlr4nim-main.flake = false;
  inputs.src-antlr4nim-main.ref   = "refs/heads/main";
  inputs.src-antlr4nim-main.owner = "jan0sc";
  inputs.src-antlr4nim-main.repo  = "antlr4nim";
  inputs.src-antlr4nim-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-antlr4nim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-antlr4nim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}