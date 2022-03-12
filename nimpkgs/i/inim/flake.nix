{
  description = ''Interactive Nim Shell'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."inim-master".url = "path:./master";
  inputs."inim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_1_1".url = "path:./0_1_1";
  inputs."inim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_0".url = "path:./0_2_0";
  inputs."inim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_1".url = "path:./0_2_1";
  inputs."inim-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_2".url = "path:./0_2_2";
  inputs."inim-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_3".url = "path:./0_2_3";
  inputs."inim-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_4".url = "path:./0_2_4";
  inputs."inim-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_2_5".url = "path:./0_2_5";
  inputs."inim-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_3_0".url = "path:./0_3_0";
  inputs."inim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_3_1".url = "path:./0_3_1";
  inputs."inim-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_0".url = "path:./0_4_0";
  inputs."inim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_1".url = "path:./0_4_1";
  inputs."inim-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-0_4_2".url = "path:./0_4_2";
  inputs."inim-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_2".url = "path:./v0_4_2";
  inputs."inim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_3".url = "path:./v0_4_3";
  inputs."inim-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_4".url = "path:./v0_4_4";
  inputs."inim-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_5".url = "path:./v0_4_5";
  inputs."inim-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_6".url = "path:./v0_4_6";
  inputs."inim-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_4_7".url = "path:./v0_4_7";
  inputs."inim-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_5_0".url = "path:./v0_5_0";
  inputs."inim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_6_0".url = "path:./v0_6_0";
  inputs."inim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim-v0_6_1".url = "path:./v0_6_1";
  inputs."inim-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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