{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffmpeg-0_3_11.flake = false;
  inputs.src-ffmpeg-0_3_11.ref   = "refs/tags/0.3.11";
  inputs.src-ffmpeg-0_3_11.owner = "momeemt";
  inputs.src-ffmpeg-0_3_11.repo  = "ffmpeg.nim";
  inputs.src-ffmpeg-0_3_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-0_3_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffmpeg-0_3_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}