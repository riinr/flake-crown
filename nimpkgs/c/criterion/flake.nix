{
  description = ''Statistic-driven microbenchmark framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."criterion-master".url = "path:./master";
  inputs."criterion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_1_0".url = "path:./0_1_0";
  inputs."criterion-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_1_1".url = "path:./0_1_1";
  inputs."criterion-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_1_2".url = "path:./0_1_2";
  inputs."criterion-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_1_3".url = "path:./0_1_3";
  inputs."criterion-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_0".url = "path:./0_2_0";
  inputs."criterion-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_1".url = "path:./0_2_1";
  inputs."criterion-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_2".url = "path:./0_2_2";
  inputs."criterion-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_3".url = "path:./0_2_3";
  inputs."criterion-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_4".url = "path:./0_2_4";
  inputs."criterion-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_5".url = "path:./0_2_5";
  inputs."criterion-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_6".url = "path:./0_2_6";
  inputs."criterion-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_7".url = "path:./0_2_7";
  inputs."criterion-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion-0_2_8".url = "path:./0_2_8";
  inputs."criterion-0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion-0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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