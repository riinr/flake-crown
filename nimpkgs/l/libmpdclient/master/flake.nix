{
  description = ''Bindings to Music Player Daemon client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libmpdclient-master.flake = false;
  inputs.src-libmpdclient-master.ref   = "refs/heads/master";
  inputs.src-libmpdclient-master.owner = "lompik";
  inputs.src-libmpdclient-master.repo  = "libmpdclient.nim";
  inputs.src-libmpdclient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libmpdclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libmpdclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}