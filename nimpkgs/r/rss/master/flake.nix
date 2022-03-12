{
  description = ''RSS library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rss-master.flake = false;
  inputs.src-rss-master.owner = "achesak";
  inputs.src-rss-master.ref   = "refs/heads/master";
  inputs.src-rss-master.repo  = "nim-rss";
  inputs.src-rss-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rss-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rss-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}