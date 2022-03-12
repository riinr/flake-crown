{
  description = ''Nim - Java bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jnim-master".url = "path:./master";
  inputs."jnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_1_0".url = "path:./v0_1_0";
  inputs."jnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_1_1".url = "path:./v0_1_1";
  inputs."jnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_0".url = "path:./v0_2_0";
  inputs."jnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_1".url = "path:./v0_2_1";
  inputs."jnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_2".url = "path:./v0_2_2";
  inputs."jnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_3".url = "path:./v0_2_3";
  inputs."jnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_4".url = "path:./v0_2_4";
  inputs."jnim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_5".url = "path:./v0_2_5";
  inputs."jnim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_2_6".url = "path:./v0_2_6";
  inputs."jnim-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_0".url = "path:./v0_3_0";
  inputs."jnim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_1".url = "path:./v0_3_1";
  inputs."jnim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_2".url = "path:./v0_3_2";
  inputs."jnim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_3".url = "path:./v0_3_3";
  inputs."jnim-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_4".url = "path:./v0_3_4";
  inputs."jnim-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_5".url = "path:./v0_3_5";
  inputs."jnim-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_3_6".url = "path:./v0_3_6";
  inputs."jnim-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_0".url = "path:./v0_4_0";
  inputs."jnim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_1".url = "path:./v0_4_1";
  inputs."jnim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_4_2".url = "path:./v0_4_2";
  inputs."jnim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_5".url = "path:./v0_5";
  inputs."jnim-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim-v0_5_1".url = "path:./v0_5_1";
  inputs."jnim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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