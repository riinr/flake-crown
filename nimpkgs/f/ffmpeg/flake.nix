{
  description = ''ffmpeg.nim is the Nim binding for FFMpeg(4.3.2).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ffmpeg-main".dir   = "main";
  inputs."ffmpeg-main".owner = "nim-nix-pkgs";
  inputs."ffmpeg-main".ref   = "master";
  inputs."ffmpeg-main".repo  = "ffmpeg";
  inputs."ffmpeg-main".type  = "github";
  inputs."ffmpeg-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_3_11".dir   = "0_3_11";
  inputs."ffmpeg-0_3_11".owner = "nim-nix-pkgs";
  inputs."ffmpeg-0_3_11".ref   = "master";
  inputs."ffmpeg-0_3_11".repo  = "ffmpeg";
  inputs."ffmpeg-0_3_11".type  = "github";
  inputs."ffmpeg-0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_4_2".dir   = "0_4_2";
  inputs."ffmpeg-0_4_2".owner = "nim-nix-pkgs";
  inputs."ffmpeg-0_4_2".ref   = "master";
  inputs."ffmpeg-0_4_2".repo  = "ffmpeg";
  inputs."ffmpeg-0_4_2".type  = "github";
  inputs."ffmpeg-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_5_0".dir   = "0_5_0";
  inputs."ffmpeg-0_5_0".owner = "nim-nix-pkgs";
  inputs."ffmpeg-0_5_0".ref   = "master";
  inputs."ffmpeg-0_5_0".repo  = "ffmpeg";
  inputs."ffmpeg-0_5_0".type  = "github";
  inputs."ffmpeg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ffmpeg-0_5_4".dir   = "0_5_4";
  inputs."ffmpeg-0_5_4".owner = "nim-nix-pkgs";
  inputs."ffmpeg-0_5_4".ref   = "master";
  inputs."ffmpeg-0_5_4".repo  = "ffmpeg";
  inputs."ffmpeg-0_5_4".type  = "github";
  inputs."ffmpeg-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffmpeg-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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