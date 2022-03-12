{
  description = ''Easy websocket with chronos support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-news-0_3.flake = false;
  inputs.src-news-0_3.owner = "tormund";
  inputs.src-news-0_3.ref   = "refs/tags/0.3";
  inputs.src-news-0_3.repo  = "news";
  inputs.src-news-0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-news-0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-news-0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}