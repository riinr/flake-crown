{
  description = ''Client and server database and networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wavecore-master".url = "path:./master";
  inputs."wavecore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_1_0".url = "path:./0_1_0";
  inputs."wavecore-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_1_1".url = "path:./0_1_1";
  inputs."wavecore-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_0".url = "path:./0_2_0";
  inputs."wavecore-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_1".url = "path:./0_2_1";
  inputs."wavecore-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_2".url = "path:./0_2_2";
  inputs."wavecore-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_2_3".url = "path:./0_2_3";
  inputs."wavecore-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_0".url = "path:./0_3_0";
  inputs."wavecore-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_1".url = "path:./0_3_1";
  inputs."wavecore-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_2".url = "path:./0_3_2";
  inputs."wavecore-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_3".url = "path:./0_3_3";
  inputs."wavecore-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_4".url = "path:./0_3_4";
  inputs."wavecore-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_5".url = "path:./0_3_5";
  inputs."wavecore-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_6".url = "path:./0_3_6";
  inputs."wavecore-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_3_7".url = "path:./0_3_7";
  inputs."wavecore-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_0".url = "path:./0_4_0";
  inputs."wavecore-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_1".url = "path:./0_4_1";
  inputs."wavecore-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_2".url = "path:./0_4_2";
  inputs."wavecore-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_4_3".url = "path:./0_4_3";
  inputs."wavecore-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wavecore-0_5_0".url = "path:./0_5_0";
  inputs."wavecore-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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