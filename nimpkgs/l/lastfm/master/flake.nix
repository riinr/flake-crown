{
  description = ''Last.FM API bindings (documentation: https://tandy1000.gitlab.io/lastfm-nim/)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lastfm-master.flake = false;
  inputs.src-lastfm-master.ref   = "refs/heads/master";
  inputs.src-lastfm-master.owner = "tandy1000";
  inputs.src-lastfm-master.repo  = "lastfm-nim";
  inputs.src-lastfm-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lastfm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}