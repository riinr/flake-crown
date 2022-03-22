{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(5.0).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffmpeg-0_5_0.flake = false;
  inputs.src-ffmpeg-0_5_0.ref   = "refs/tags/0.5.0";
  inputs.src-ffmpeg-0_5_0.owner = "momeemt";
  inputs.src-ffmpeg-0_5_0.repo  = "ffmpeg.nim";
  inputs.src-ffmpeg-0_5_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffmpeg-0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}