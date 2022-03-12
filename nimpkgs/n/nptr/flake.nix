{
  description = ''Nim lang smart pointers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nptr-develop".url = "path:./develop";
  inputs."nptr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-main".url = "path:./main";
  inputs."nptr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_0".url = "path:./v0_1_0";
  inputs."nptr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_1".url = "path:./v0_1_1";
  inputs."nptr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_10".url = "path:./v0_1_10";
  inputs."nptr-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_2".url = "path:./v0_1_2";
  inputs."nptr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_3".url = "path:./v0_1_3";
  inputs."nptr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_4".url = "path:./v0_1_4";
  inputs."nptr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_5".url = "path:./v0_1_5";
  inputs."nptr-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_6".url = "path:./v0_1_6";
  inputs."nptr-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_7".url = "path:./v0_1_7";
  inputs."nptr-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_8".url = "path:./v0_1_8";
  inputs."nptr-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_1_9".url = "path:./v0_1_9";
  inputs."nptr-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nptr-v0_2_0".url = "path:./v0_2_0";
  inputs."nptr-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nptr-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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