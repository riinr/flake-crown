{
  description = ''xam'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xam-main".url = "path:./main";
  inputs."xam-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_1_0".url = "path:./0_1_0";
  inputs."xam-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_2_0".url = "path:./0_2_0";
  inputs."xam-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_3_0".url = "path:./0_3_0";
  inputs."xam-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_4_0".url = "path:./0_4_0";
  inputs."xam-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_5_0".url = "path:./0_5_0";
  inputs."xam-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_6_0".url = "path:./0_6_0";
  inputs."xam-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_7_0".url = "path:./0_7_0";
  inputs."xam-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_8_0".url = "path:./0_8_0";
  inputs."xam-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-0_9_0".url = "path:./0_9_0";
  inputs."xam-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_0_0".url = "path:./1_0_0";
  inputs."xam-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_1_0".url = "path:./1_1_0";
  inputs."xam-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_3_0".url = "path:./1_3_0";
  inputs."xam-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_4_0".url = "path:./1_4_0";
  inputs."xam-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_5_0".url = "path:./1_5_0";
  inputs."xam-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_6_0".url = "path:./1_6_0";
  inputs."xam-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xam-1_7_0".url = "path:./1_7_0";
  inputs."xam-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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