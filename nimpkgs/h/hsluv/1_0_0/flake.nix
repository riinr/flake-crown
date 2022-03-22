{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hsluv-1_0_0.flake = false;
  inputs.src-hsluv-1_0_0.ref   = "refs/tags/1.0.0";
  inputs.src-hsluv-1_0_0.owner = "isthisnagee";
  inputs.src-hsluv-1_0_0.repo  = "hsluv-nim";
  inputs.src-hsluv-1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hsluv-1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hsluv-1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}