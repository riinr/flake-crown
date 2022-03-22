{
  description = ''Nim wrapper of libxgboost'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xgboost_nim-master.flake = false;
  inputs.src-xgboost_nim-master.ref   = "refs/heads/master";
  inputs.src-xgboost_nim-master.owner = "jackhftang";
  inputs.src-xgboost_nim-master.repo  = "xgboost.nim";
  inputs.src-xgboost_nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xgboost_nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xgboost_nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}