{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neo-master".url = "path:./master";
  inputs."neo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_1".url = "path:./0_1_1";
  inputs."neo-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_2".url = "path:./0_1_2";
  inputs."neo-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_3".url = "path:./0_1_3";
  inputs."neo-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_4".url = "path:./0_1_4";
  inputs."neo-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_5".url = "path:./0_1_5";
  inputs."neo-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_6".url = "path:./0_1_6";
  inputs."neo-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_7".url = "path:./0_1_7";
  inputs."neo-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_0".url = "path:./0_2_0";
  inputs."neo-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_2".url = "path:./0_2_2";
  inputs."neo-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_3".url = "path:./0_2_3";
  inputs."neo-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_4".url = "path:./0_2_4";
  inputs."neo-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_5".url = "path:./0_2_5";
  inputs."neo-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_0".url = "path:./0_3_0";
  inputs."neo-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_1".url = "path:./0_3_1";
  inputs."neo-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_2".url = "path:./0_3_2";
  inputs."neo-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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