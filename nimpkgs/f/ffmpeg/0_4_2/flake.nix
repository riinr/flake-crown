{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffmpeg-0_4_2.flake = false;
  inputs.src-ffmpeg-0_4_2.owner = "momeemt";
  inputs.src-ffmpeg-0_4_2.ref   = "refs/tags/0.4.2";
  inputs.src-ffmpeg-0_4_2.repo  = "ffmpeg.nim";
  inputs.src-ffmpeg-0_4_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffmpeg-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}