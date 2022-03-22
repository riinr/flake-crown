{
  description = ''Simple WebSocket library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-news-0_2.flake = false;
  inputs.src-news-0_2.owner = "tormund";
  inputs.src-news-0_2.ref   = "0_2";
  inputs.src-news-0_2.repo  = "news";
  inputs.src-news-0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-news-0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-news-0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}