{
  description = ''Nim library for parsing PLS, M3U, and XSPF playlist files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-playlists-master.flake = false;
  inputs.src-playlists-master.owner = "achesak";
  inputs.src-playlists-master.ref   = "refs/heads/master";
  inputs.src-playlists-master.repo  = "nim-playlists";
  inputs.src-playlists-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-playlists-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-playlists-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}