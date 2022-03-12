{
  description = ''A package to compile nim functions for AWS Lambda'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awslambda-master.flake = false;
  inputs.src-awslambda-master.owner = "lambci";
  inputs.src-awslambda-master.ref   = "refs/heads/master";
  inputs.src-awslambda-master.repo  = "awslambda.nim";
  inputs.src-awslambda-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awslambda-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-awslambda-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}