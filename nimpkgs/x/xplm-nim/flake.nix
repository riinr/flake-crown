{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xplm-nim-develop".url = "path:./develop";
  inputs."xplm-nim-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-master".url = "path:./master";
  inputs."xplm-nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_1_0".url = "path:./v0_1_0";
  inputs."xplm-nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_1_1".url = "path:./v0_1_1";
  inputs."xplm-nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_0".url = "path:./v0_2_0";
  inputs."xplm-nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_1".url = "path:./v0_2_1";
  inputs."xplm-nim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_2".url = "path:./v0_2_2";
  inputs."xplm-nim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_3".url = "path:./v0_2_3";
  inputs."xplm-nim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_4".url = "path:./v0_2_4";
  inputs."xplm-nim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xplm-nim-v0_2_5".url = "path:./v0_2_5";
  inputs."xplm-nim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xplm-nim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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