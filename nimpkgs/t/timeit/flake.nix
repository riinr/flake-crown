{
  description = ''measuring execution times written in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timeit-master".url = "path:./master";
  inputs."timeit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-0_1_2".url = "path:./0_1_2";
  inputs."timeit-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_0".url = "path:./v0_1_0";
  inputs."timeit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_1".url = "path:./v0_1_1";
  inputs."timeit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_6".url = "path:./v0_1_6";
  inputs."timeit-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_1_8".url = "path:./v0_1_8";
  inputs."timeit-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_0".url = "path:./v0_2_0";
  inputs."timeit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_1".url = "path:./v0_2_1";
  inputs."timeit-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_2".url = "path:./v0_2_2";
  inputs."timeit-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_4".url = "path:./v0_2_4";
  inputs."timeit-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_6".url = "path:./v0_2_6";
  inputs."timeit-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_2_8".url = "path:./v0_2_8";
  inputs."timeit-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_0".url = "path:./v0_3_0";
  inputs."timeit-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_2".url = "path:./v0_3_2";
  inputs."timeit-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_4".url = "path:./v0_3_4";
  inputs."timeit-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit-v0_3_6".url = "path:./v0_3_6";
  inputs."timeit-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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