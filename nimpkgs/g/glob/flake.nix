{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glob-master".url = "path:./master";
  inputs."glob-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_1_0".url = "path:./v0_1_0";
  inputs."glob-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_10_0".url = "path:./v0_10_0";
  inputs."glob-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_11_0".url = "path:./v0_11_0";
  inputs."glob-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_11_1".url = "path:./v0_11_1";
  inputs."glob-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_2_0".url = "path:./v0_2_0";
  inputs."glob-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_3_0".url = "path:./v0_3_0";
  inputs."glob-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_3_1".url = "path:./v0_3_1";
  inputs."glob-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_4_0".url = "path:./v0_4_0";
  inputs."glob-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_5_0".url = "path:./v0_5_0";
  inputs."glob-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_6_0".url = "path:./v0_6_0";
  inputs."glob-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_7_0".url = "path:./v0_7_0";
  inputs."glob-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_8_0".url = "path:./v0_8_0";
  inputs."glob-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_8_1".url = "path:./v0_8_1";
  inputs."glob-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_0".url = "path:./v0_9_0";
  inputs."glob-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_0-doc".url = "path:./v0_9_0-doc";
  inputs."glob-v0_9_0-doc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_0-doc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_1".url = "path:./v0_9_1";
  inputs."glob-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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