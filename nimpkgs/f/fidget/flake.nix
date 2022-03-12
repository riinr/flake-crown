{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fidget-master".url = "path:./master";
  inputs."fidget-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_2_1".url = "path:./0_2_1";
  inputs."fidget-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_3_0".url = "path:./0_3_0";
  inputs."fidget-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_3_1".url = "path:./0_3_1";
  inputs."fidget-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_3_2".url = "path:./0_3_2";
  inputs."fidget-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_4_0".url = "path:./0_4_0";
  inputs."fidget-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_4_1".url = "path:./0_4_1";
  inputs."fidget-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_4_2".url = "path:./0_4_2";
  inputs."fidget-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_4_3".url = "path:./0_4_3";
  inputs."fidget-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_5_0".url = "path:./0_5_0";
  inputs."fidget-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_6_0".url = "path:./0_6_0";
  inputs."fidget-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_6_1".url = "path:./0_6_1";
  inputs."fidget-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_6_2".url = "path:./0_6_2";
  inputs."fidget-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_6_3".url = "path:./0_6_3";
  inputs."fidget-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_6_4".url = "path:./0_6_4";
  inputs."fidget-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_0".url = "path:./0_7_0";
  inputs."fidget-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_1".url = "path:./0_7_1";
  inputs."fidget-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_3".url = "path:./0_7_3";
  inputs."fidget-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_4".url = "path:./0_7_4";
  inputs."fidget-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_5".url = "path:./0_7_5";
  inputs."fidget-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_7".url = "path:./0_7_7";
  inputs."fidget-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_8".url = "path:./0_7_8";
  inputs."fidget-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-0_7_9".url = "path:./0_7_9";
  inputs."fidget-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-v0_2_1".url = "path:./v0_2_1";
  inputs."fidget-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget-v0_3_1".url = "path:./v0_3_1";
  inputs."fidget-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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