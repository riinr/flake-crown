{
  description = ''A comprehensive toolkit for all your testing needs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."testutils-master".url = "path:./master";
  inputs."testutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_0_2".url = "path:./0_0_2";
  inputs."testutils-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_1_0".url = "path:./0_1_0";
  inputs."testutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_1_1".url = "path:./0_1_1";
  inputs."testutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_2_0".url = "path:./0_2_0";
  inputs."testutils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_3_0".url = "path:./0_3_0";
  inputs."testutils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_4_0".url = "path:./0_4_0";
  inputs."testutils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-0_4_1".url = "path:./0_4_1";
  inputs."testutils-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils-v0_4_2".url = "path:./v0_4_2";
  inputs."testutils-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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