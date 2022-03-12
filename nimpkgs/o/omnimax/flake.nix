{
  description = ''Max wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omnimax-develop".url = "path:./develop";
  inputs."omnimax-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-master".url = "path:./master";
  inputs."omnimax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_1_0".url = "path:./0_1_0";
  inputs."omnimax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_0".url = "path:./0_2_0";
  inputs."omnimax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_1".url = "path:./0_2_1";
  inputs."omnimax-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_2".url = "path:./0_2_2";
  inputs."omnimax-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_3".url = "path:./0_2_3";
  inputs."omnimax-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_4_0".url = "path:./0_4_0";
  inputs."omnimax-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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