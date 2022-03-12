{
  description = ''Easy websocket with chronos support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-news-0_4.flake = false;
  inputs.src-news-0_4.owner = "tormund";
  inputs.src-news-0_4.ref   = "refs/tags/0.4";
  inputs.src-news-0_4.repo  = "news";
  inputs.src-news-0_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-news-0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-news-0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}