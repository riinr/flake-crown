{
  description = ''Support for serialization of objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serializetools-master".url = "path:./master";
  inputs."serializetools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_0_0".url = "path:./v1_0_0";
  inputs."serializetools-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_1_0".url = "path:./v1_1_0";
  inputs."serializetools-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_10_0".url = "path:./v1_10_0";
  inputs."serializetools-v1_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_11".url = "path:./v1_11";
  inputs."serializetools-v1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_11_0".url = "path:./v1_11_0";
  inputs."serializetools-v1_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_0".url = "path:./v1_12_0";
  inputs."serializetools-v1_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_1".url = "path:./v1_12_1";
  inputs."serializetools-v1_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_12_2".url = "path:./v1_12_2";
  inputs."serializetools-v1_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_13_0".url = "path:./v1_13_0";
  inputs."serializetools-v1_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_0".url = "path:./v1_16_0";
  inputs."serializetools-v1_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_1".url = "path:./v1_16_1";
  inputs."serializetools-v1_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_16_2".url = "path:./v1_16_2";
  inputs."serializetools-v1_16_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_16_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_2_0".url = "path:./v1_2_0";
  inputs."serializetools-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_3_0".url = "path:./v1_3_0";
  inputs."serializetools-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_3_1".url = "path:./v1_3_1";
  inputs."serializetools-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_4_0".url = "path:./v1_4_0";
  inputs."serializetools-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_5_0".url = "path:./v1_5_0";
  inputs."serializetools-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_5_1".url = "path:./v1_5_1";
  inputs."serializetools-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_6_0".url = "path:./v1_6_0";
  inputs."serializetools-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serializetools-v1_9_0".url = "path:./v1_9_0";
  inputs."serializetools-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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