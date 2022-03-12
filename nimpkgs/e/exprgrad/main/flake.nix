{
  description = ''An experimental deep learning framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-exprgrad-main.flake = false;
  inputs.src-exprgrad-main.owner = "can-lehmann";
  inputs.src-exprgrad-main.ref   = "refs/heads/main";
  inputs.src-exprgrad-main.repo  = "exprgrad";
  inputs.src-exprgrad-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-exprgrad-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-exprgrad-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}