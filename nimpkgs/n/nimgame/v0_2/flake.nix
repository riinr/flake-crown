{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgame-v0_2.flake = false;
  inputs.src-nimgame-v0_2.owner = "Vladar4";
  inputs.src-nimgame-v0_2.ref   = "v0_2";
  inputs.src-nimgame-v0_2.repo  = "nimgame";
  inputs.src-nimgame-v0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-v0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgame-v0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}