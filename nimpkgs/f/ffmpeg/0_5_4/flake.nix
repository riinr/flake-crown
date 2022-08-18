{
  description = ''ffmpeg.nim is the Nim binding for FFmpeg 5.0.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffmpeg-0_5_4.flake = false;
  inputs.src-ffmpeg-0_5_4.ref   = "refs/tags/0.5.4";
  inputs.src-ffmpeg-0_5_4.owner = "momeemt";
  inputs.src-ffmpeg-0_5_4.repo  = "ffmpeg.nim";
  inputs.src-ffmpeg-0_5_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-0_5_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ffmpeg-0_5_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}