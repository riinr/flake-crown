{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-matrixsdk-main.flake = false;
  inputs.src-matrixsdk-main.owner = "dylhack";
  inputs.src-matrixsdk-main.ref   = "main";
  inputs.src-matrixsdk-main.repo  = "matrix-nim-sdk";
  inputs.src-matrixsdk-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-matrixsdk-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-matrixsdk-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}