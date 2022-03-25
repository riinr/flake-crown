{
  description = ''Old Win API library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oldwinapi-v2_1_0.flake = false;
  inputs.src-oldwinapi-v2_1_0.ref   = "refs/tags/v2.1.0";
  inputs.src-oldwinapi-v2_1_0.owner = "nim-lang";
  inputs.src-oldwinapi-v2_1_0.repo  = "oldwinapi";
  inputs.src-oldwinapi-v2_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oldwinapi-v2_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-oldwinapi-v2_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}