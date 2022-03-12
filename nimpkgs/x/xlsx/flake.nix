{
  description = ''Read and parse Excel files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xlsx-master".url = "path:./master";
  inputs."xlsx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-0_4_5".url = "path:./0_4_5";
  inputs."xlsx-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_0".url = "path:./v0_1_0";
  inputs."xlsx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_2".url = "path:./v0_1_2";
  inputs."xlsx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_6".url = "path:./v0_1_6";
  inputs."xlsx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_8".url = "path:./v0_1_8";
  inputs."xlsx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_2_0".url = "path:./v0_2_0";
  inputs."xlsx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_0".url = "path:./v0_3_0";
  inputs."xlsx-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_2".url = "path:./v0_3_2";
  inputs."xlsx-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_6".url = "path:./v0_3_6";
  inputs."xlsx-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_8".url = "path:./v0_3_8";
  inputs."xlsx-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_0".url = "path:./v0_4_0";
  inputs."xlsx-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_2".url = "path:./v0_4_2";
  inputs."xlsx-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_4".url = "path:./v0_4_4";
  inputs."xlsx-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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