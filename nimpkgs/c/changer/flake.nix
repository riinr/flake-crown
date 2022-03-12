{
  description = ''A tool for managing a project's changelog'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."changer-master".url = "path:./master";
  inputs."changer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_1_1".url = "path:./v0_1_1";
  inputs."changer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_2_0".url = "path:./v0_2_0";
  inputs."changer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_3_0".url = "path:./v0_3_0";
  inputs."changer-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_0".url = "path:./v0_4_0";
  inputs."changer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_1".url = "path:./v0_4_1";
  inputs."changer-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_2".url = "path:./v0_4_2";
  inputs."changer-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_5_0".url = "path:./v0_5_0";
  inputs."changer-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_0".url = "path:./v0_6_0";
  inputs."changer-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_1".url = "path:./v0_6_1";
  inputs."changer-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_2".url = "path:./v0_6_2";
  inputs."changer-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_7_0".url = "path:./v0_7_0";
  inputs."changer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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