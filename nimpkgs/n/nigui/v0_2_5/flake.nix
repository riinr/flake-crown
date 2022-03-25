{
  description = ''Cross-platform, desktop GUI toolkit using native widgets.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nigui-v0_2_5.flake = false;
  inputs.src-nigui-v0_2_5.ref   = "refs/tags/v0.2.5";
  inputs.src-nigui-v0_2_5.owner = "trustable-code";
  inputs.src-nigui-v0_2_5.repo  = "NiGui";
  inputs.src-nigui-v0_2_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nigui-v0_2_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nigui-v0_2_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}