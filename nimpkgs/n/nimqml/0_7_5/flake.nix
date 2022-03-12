{
  description = ''Qt Qml bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimqml-0_7_5.flake = false;
  inputs.src-nimqml-0_7_5.owner = "filcuc";
  inputs.src-nimqml-0_7_5.ref   = "refs/tags/0.7.5";
  inputs.src-nimqml-0_7_5.repo  = "nimqml";
  inputs.src-nimqml-0_7_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_7_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimqml-0_7_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}