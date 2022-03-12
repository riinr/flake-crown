{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ffmpeg-master".url = "path:./master";
  inputs."ffmpeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_3_11".url = "path:./0_3_11";
  inputs."ffmpeg-0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_4_2".url = "path:./0_4_2";
  inputs."ffmpeg-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_5_0".url = "path:./0_5_0";
  inputs."ffmpeg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}