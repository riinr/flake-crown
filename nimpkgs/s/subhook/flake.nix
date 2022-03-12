{
  description = ''subhook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."subhook-master".url = "path:./master";
  inputs."subhook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_0".url = "path:./0_1_0";
  inputs."subhook-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_1".url = "path:./0_1_1";
  inputs."subhook-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_2".url = "path:./0_1_2";
  inputs."subhook-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_4_2_0".url = "path:./0_4_2_0";
  inputs."subhook-0_4_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_4_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_0".url = "path:./0_5_0";
  inputs."subhook-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_1".url = "path:./0_5_1";
  inputs."subhook-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_2".url = "path:./0_5_2";
  inputs."subhook-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_3".url = "path:./0_5_3";
  inputs."subhook-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_5".url = "path:./0_5_5";
  inputs."subhook-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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