{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(5.0).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ffmpeg-master.flake = false;
  inputs.src-ffmpeg-master.ref   = "refs/heads/master";
  inputs.src-ffmpeg-master.owner = "momeemt";
  inputs.src-ffmpeg-master.repo  = "ffmpeg.nim";
  inputs.src-ffmpeg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ffmpeg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ffmpeg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}