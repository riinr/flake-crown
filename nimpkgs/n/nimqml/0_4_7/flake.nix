{
  description = ''QML bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimqml-0_4_7.flake = false;
  inputs.src-nimqml-0_4_7.owner = "filcuc";
  inputs.src-nimqml-0_4_7.ref   = "0_4_7";
  inputs.src-nimqml-0_4_7.repo  = "nimqml";
  inputs.src-nimqml-0_4_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_4_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimqml-0_4_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}