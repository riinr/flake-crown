{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fugitive-master".url = "path:./master";
  inputs."fugitive-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_0".url = "path:./v0_1_0";
  inputs."fugitive-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_1".url = "path:./v0_1_1";
  inputs."fugitive-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_2".url = "path:./v0_1_2";
  inputs."fugitive-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_10_0".url = "path:./v0_10_0";
  inputs."fugitive-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_10_1".url = "path:./v0_10_1";
  inputs."fugitive-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_0".url = "path:./v0_11_0";
  inputs."fugitive-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_1".url = "path:./v0_11_1";
  inputs."fugitive-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_2_0".url = "path:./v0_2_0";
  inputs."fugitive-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_3_0".url = "path:./v0_3_0";
  inputs."fugitive-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_3_1".url = "path:./v0_3_1";
  inputs."fugitive-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_4_0".url = "path:./v0_4_0";
  inputs."fugitive-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_5_0".url = "path:./v0_5_0";
  inputs."fugitive-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_6_0".url = "path:./v0_6_0";
  inputs."fugitive-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_0".url = "path:./v0_7_0";
  inputs."fugitive-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_1".url = "path:./v0_7_1";
  inputs."fugitive-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_2".url = "path:./v0_7_2";
  inputs."fugitive-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_8_0".url = "path:./v0_8_0";
  inputs."fugitive-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_9_0".url = "path:./v0_9_0";
  inputs."fugitive-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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