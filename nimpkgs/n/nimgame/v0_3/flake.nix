{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgame-v0_3.flake = false;
  inputs.src-nimgame-v0_3.owner = "Vladar4";
  inputs.src-nimgame-v0_3.ref   = "v0_3";
  inputs.src-nimgame-v0_3.repo  = "nimgame";
  inputs.src-nimgame-v0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-v0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgame-v0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}