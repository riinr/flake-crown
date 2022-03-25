{
  description = ''Nim interface to ANTLR4 listener/visitor via jsffi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-antlr4nim-v0_1_0.flake = false;
  inputs.src-antlr4nim-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-antlr4nim-v0_1_0.owner = "jan0sc";
  inputs.src-antlr4nim-v0_1_0.repo  = "antlr4nim";
  inputs.src-antlr4nim-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-antlr4nim-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-antlr4nim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}