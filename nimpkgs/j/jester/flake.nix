{
  description = ''A sinatra-like web framework for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jester-master".url = "path:./master";
  inputs."jester-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_1_0".url = "path:./v0_1_0";
  inputs."jester-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_1_1".url = "path:./v0_1_1";
  inputs."jester-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_2_0".url = "path:./v0_2_0";
  inputs."jester-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_2_1".url = "path:./v0_2_1";
  inputs."jester-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_3_0".url = "path:./v0_3_0";
  inputs."jester-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_0".url = "path:./v0_4_0";
  inputs."jester-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_1".url = "path:./v0_4_1";
  inputs."jester-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_2".url = "path:./v0_4_2";
  inputs."jester-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_4_3".url = "path:./v0_4_3";
  inputs."jester-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester-v0_5_0".url = "path:./v0_5_0";
  inputs."jester-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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