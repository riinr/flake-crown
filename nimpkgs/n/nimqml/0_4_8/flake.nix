{
  description = ''QML bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimqml-0_4_8.flake = false;
  inputs.src-nimqml-0_4_8.owner = "filcuc";
  inputs.src-nimqml-0_4_8.ref   = "0_4_8";
  inputs.src-nimqml-0_4_8.repo  = "nimqml";
  inputs.src-nimqml-0_4_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimqml-0_4_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimqml-0_4_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}