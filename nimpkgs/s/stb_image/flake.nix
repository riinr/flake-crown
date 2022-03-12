{
  description = ''A wrapper for stb_image and stb_image_write.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stb_image-master".url = "path:./master";
  inputs."stb_image-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_1".url = "path:./1_1";
  inputs."stb_image-1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_2".url = "path:./1_2";
  inputs."stb_image-1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_3".url = "path:./1_3";
  inputs."stb_image-1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_4".url = "path:./1_4";
  inputs."stb_image-1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_5".url = "path:./1_5";
  inputs."stb_image-1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-1_6".url = "path:./1_6";
  inputs."stb_image-1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_0".url = "path:./2_0";
  inputs."stb_image-2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_1".url = "path:./2_1";
  inputs."stb_image-2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_2".url = "path:./2_2";
  inputs."stb_image-2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_3".url = "path:./2_3";
  inputs."stb_image-2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_4".url = "path:./2_4";
  inputs."stb_image-2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image-2_5".url = "path:./2_5";
  inputs."stb_image-2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image-2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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