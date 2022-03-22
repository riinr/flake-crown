{
  description = ''html dsl'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niml-0_2_3.flake = false;
  inputs.src-niml-0_2_3.owner = "jakubDoka";
  inputs.src-niml-0_2_3.ref   = "0_2_3";
  inputs.src-niml-0_2_3.repo  = "niml";
  inputs.src-niml-0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niml-0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niml-0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}