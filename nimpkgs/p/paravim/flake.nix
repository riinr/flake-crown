{
  description = ''An embedded text editor for paranim games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paravim-master".url = "path:./master";
  inputs."paravim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_10_0".url = "path:./0_10_0";
  inputs."paravim-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_11_0".url = "path:./0_11_0";
  inputs."paravim-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_12_0".url = "path:./0_12_0";
  inputs."paravim-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_13_0".url = "path:./0_13_0";
  inputs."paravim-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_14_0".url = "path:./0_14_0";
  inputs."paravim-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_15_1".url = "path:./0_15_1";
  inputs."paravim-0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_16_0".url = "path:./0_16_0";
  inputs."paravim-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_16_1".url = "path:./0_16_1";
  inputs."paravim-0_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_17_0".url = "path:./0_17_0";
  inputs."paravim-0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_17_1".url = "path:./0_17_1";
  inputs."paravim-0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_18_0".url = "path:./0_18_0";
  inputs."paravim-0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_18_1".url = "path:./0_18_1";
  inputs."paravim-0_18_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_18_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_18_2".url = "path:./0_18_2";
  inputs."paravim-0_18_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_18_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_2_0".url = "path:./0_2_0";
  inputs."paravim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_3_0".url = "path:./0_3_0";
  inputs."paravim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_4_0".url = "path:./0_4_0";
  inputs."paravim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_5_0".url = "path:./0_5_0";
  inputs."paravim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_6_0".url = "path:./0_6_0";
  inputs."paravim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_7_0".url = "path:./0_7_0";
  inputs."paravim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_8_0".url = "path:./0_8_0";
  inputs."paravim-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paravim-0_9_0".url = "path:./0_9_0";
  inputs."paravim-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paravim-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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