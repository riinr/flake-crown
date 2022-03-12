{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimQBittorrent-master.flake = false;
  inputs.src-nimQBittorrent-master.owner = "faulander";
  inputs.src-nimQBittorrent-master.ref   = "refs/heads/master";
  inputs.src-nimQBittorrent-master.repo  = "nimQBittorrent";
  inputs.src-nimQBittorrent-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimQBittorrent-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimQBittorrent-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}