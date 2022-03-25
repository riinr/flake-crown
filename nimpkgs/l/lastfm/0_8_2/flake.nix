{
  description = ''Last.FM API bindings (documentation: https://tandy1000.gitlab.io/lastfm-nim/)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lastfm-0_8_2.flake = false;
  inputs.src-lastfm-0_8_2.ref   = "refs/tags/0.8.2";
  inputs.src-lastfm-0_8_2.owner = "tandy1000";
  inputs.src-lastfm-0_8_2.repo  = "lastfm-nim";
  inputs.src-lastfm-0_8_2.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lastfm-0_8_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-lastfm-0_8_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}