{
  description = ''Binding for Qt 5's Qt SQL library. Provides a single API for multiple database engines.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-qt5_qtsql-1_1_1.flake = false;
  inputs.src-qt5_qtsql-1_1_1.ref   = "refs/tags/1.1.1";
  inputs.src-qt5_qtsql-1_1_1.owner = "philip-wernersbach";
  inputs.src-qt5_qtsql-1_1_1.repo  = "nim-qt5_qtsql";
  inputs.src-qt5_qtsql-1_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-qt5_qtsql-1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-qt5_qtsql-1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}