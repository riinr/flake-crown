{
  description = ''Nim Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgl-master".url = "path:./master";
  inputs."nimgl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_1_0".url = "path:./0_1_0";
  inputs."nimgl-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_0".url = "path:./0_2_0";
  inputs."nimgl-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_1".url = "path:./0_2_1";
  inputs."nimgl-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_2".url = "path:./0_2_2";
  inputs."nimgl-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_0".url = "path:./0_3_0";
  inputs."nimgl-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_1".url = "path:./0_3_1";
  inputs."nimgl-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_2".url = "path:./0_3_2";
  inputs."nimgl-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_3".url = "path:./0_3_3";
  inputs."nimgl-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_4".url = "path:./0_3_4";
  inputs."nimgl-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_5".url = "path:./0_3_5";
  inputs."nimgl-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_6".url = "path:./0_3_6";
  inputs."nimgl-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_7".url = "path:./0_3_7";
  inputs."nimgl-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_0_0".url = "path:./1_0_0";
  inputs."nimgl-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_0_1".url = "path:./1_0_1";
  inputs."nimgl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_0".url = "path:./1_1_0";
  inputs."nimgl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_1".url = "path:./1_1_1";
  inputs."nimgl-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_10".url = "path:./1_1_10";
  inputs."nimgl-1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_2".url = "path:./1_1_2";
  inputs."nimgl-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_3".url = "path:./1_1_3";
  inputs."nimgl-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_4".url = "path:./1_1_4";
  inputs."nimgl-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_5".url = "path:./1_1_5";
  inputs."nimgl-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_6".url = "path:./1_1_6";
  inputs."nimgl-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_7".url = "path:./1_1_7";
  inputs."nimgl-1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_8".url = "path:./1_1_8";
  inputs."nimgl-1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_9".url = "path:./1_1_9";
  inputs."nimgl-1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_2_0".url = "path:./1_2_0";
  inputs."nimgl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_0".url = "path:./1_3_0";
  inputs."nimgl-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_1".url = "path:./1_3_1";
  inputs."nimgl-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_2".url = "path:./1_3_2";
  inputs."nimgl-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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