{
  description = ''A nice and icy ZSH prompt in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nicy-master".url = "path:./master";
  inputs."nicy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v1_0_0".url = "path:./v1_0_0";
  inputs."nicy-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_0_0".url = "path:./v2_0_0";
  inputs."nicy-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_1_0".url = "path:./v2_1_0";
  inputs."nicy-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_2_0".url = "path:./v2_2_0";
  inputs."nicy-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_3_0".url = "path:./v2_3_0";
  inputs."nicy-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_0".url = "path:./v2_4_0";
  inputs."nicy-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_1".url = "path:./v2_4_1";
  inputs."nicy-v2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_2".url = "path:./v2_4_2";
  inputs."nicy-v2_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_5_0".url = "path:./v2_5_0";
  inputs."nicy-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_5_1".url = "path:./v2_5_1";
  inputs."nicy-v2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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