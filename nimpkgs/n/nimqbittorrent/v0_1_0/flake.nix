{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimQBittorrent-v0_1_0.flake = false;
  inputs.src-nimQBittorrent-v0_1_0.owner = "faulander";
  inputs.src-nimQBittorrent-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-nimQBittorrent-v0_1_0.repo  = "nimQBittorrent";
  inputs.src-nimQBittorrent-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimQBittorrent-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimQBittorrent-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}