{
  description = ''Last.FM API breakouts (documentation: http://ryuk.ooo/nimdocs/lastfm/lastfm.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lastfm-0_7_0.flake = false;
  inputs.src-lastfm-0_7_0.ref   = "refs/tags/0.7.0";
  inputs.src-lastfm-0_7_0.owner = "tandy1000";
  inputs.src-lastfm-0_7_0.repo  = "lastfm-nim";
  inputs.src-lastfm-0_7_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-0_7_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-lastfm-0_7_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}