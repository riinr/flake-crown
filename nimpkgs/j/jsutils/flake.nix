{
  description = ''Utils to work with javascript'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsutils-master".url = "path:./master";
  inputs."jsutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_1_1".url = "path:./0_1_1";
  inputs."jsutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_1_2".url = "path:./0_1_2";
  inputs."jsutils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_0".url = "path:./0_2_0";
  inputs."jsutils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_1".url = "path:./0_2_1";
  inputs."jsutils-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_2".url = "path:./0_2_2";
  inputs."jsutils-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_3".url = "path:./0_2_3";
  inputs."jsutils-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_4".url = "path:./0_2_4";
  inputs."jsutils-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_5".url = "path:./0_2_5";
  inputs."jsutils-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_6".url = "path:./0_2_6";
  inputs."jsutils-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-0_2_7".url = "path:./0_2_7";
  inputs."jsutils-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-v0_1_0".url = "path:./v0_1_0";
  inputs."jsutils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsutils-v0_2_3".url = "path:./v0_2_3";
  inputs."jsutils-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsutils-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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