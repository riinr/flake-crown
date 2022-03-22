{
  description = ''Nim Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgl-1_1_8.flake = false;
  inputs.src-nimgl-1_1_8.owner = "nimgl";
  inputs.src-nimgl-1_1_8.ref   = "1_1_8";
  inputs.src-nimgl-1_1_8.repo  = "nimgl";
  inputs.src-nimgl-1_1_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-1_1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgl-1_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}