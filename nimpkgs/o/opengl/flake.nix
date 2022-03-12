{
  description = ''High-level and low-level wrapper for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opengl-master".url = "path:./master";
  inputs."opengl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_0".url = "path:./1_0";
  inputs."opengl-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_0_1".url = "path:./1_0_1";
  inputs."opengl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_1_0".url = "path:./1_1_0";
  inputs."opengl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_0".url = "path:./1_2_0";
  inputs."opengl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_3".url = "path:./1_2_3";
  inputs."opengl-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_4".url = "path:./1_2_4";
  inputs."opengl-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_5".url = "path:./1_2_5";
  inputs."opengl-1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-1_2_6".url = "path:./1_2_6";
  inputs."opengl-1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl-v1_2_2".url = "path:./v1_2_2";
  inputs."opengl-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}