{
  description = ''QML bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimqml-0_7_4.flake = false;
  inputs.src-nimqml-0_7_4.owner = "filcuc";
  inputs.src-nimqml-0_7_4.ref   = "0_7_4";
  inputs.src-nimqml-0_7_4.repo  = "nimqml";
  inputs.src-nimqml-0_7_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_7_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimqml-0_7_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}