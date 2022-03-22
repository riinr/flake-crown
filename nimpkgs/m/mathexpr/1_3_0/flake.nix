{
  description = ''MathExpr - tiny mathematical expression evaluator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mathexpr-1_3_0.flake = false;
  inputs.src-mathexpr-1_3_0.owner = "Yardanico";
  inputs.src-mathexpr-1_3_0.ref   = "1_3_0";
  inputs.src-mathexpr-1_3_0.repo  = "nim-mathexpr";
  inputs.src-mathexpr-1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mathexpr-1_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mathexpr-1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}