{
  description = ''Nim Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgl-1_1_5.flake = false;
  inputs.src-nimgl-1_1_5.owner = "nimgl";
  inputs.src-nimgl-1_1_5.ref   = "1_1_5";
  inputs.src-nimgl-1_1_5.repo  = "nimgl";
  inputs.src-nimgl-1_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgl-1_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}