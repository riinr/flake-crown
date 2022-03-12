{
  description = ''Algebraic data types and pattern matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."patty-master".url = "path:./master";
  inputs."patty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_0".url = "path:./0_1_0";
  inputs."patty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_1".url = "path:./0_1_1";
  inputs."patty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_10".url = "path:./0_1_10";
  inputs."patty-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_2".url = "path:./0_1_2";
  inputs."patty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_3".url = "path:./0_1_3";
  inputs."patty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_4".url = "path:./0_1_4";
  inputs."patty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_5".url = "path:./0_1_5";
  inputs."patty-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_6".url = "path:./0_1_6";
  inputs."patty-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_7".url = "path:./0_1_7";
  inputs."patty-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_8".url = "path:./0_1_8";
  inputs."patty-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_9".url = "path:./0_1_9";
  inputs."patty-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_2_0".url = "path:./0_2_0";
  inputs."patty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_2_1".url = "path:./0_2_1";
  inputs."patty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_0".url = "path:./0_3_0";
  inputs."patty-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_1".url = "path:./0_3_1";
  inputs."patty-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_2".url = "path:./0_3_2";
  inputs."patty-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_3".url = "path:./0_3_3";
  inputs."patty-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_4".url = "path:./0_3_4";
  inputs."patty-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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