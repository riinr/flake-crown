{
  description = ''A terminal file manager written in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimmm-master".url = "path:./master";
  inputs."nimmm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmm-v0_0_1".url = "path:./v0_0_1";
  inputs."nimmm-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmm-v0_1_0".url = "path:./v0_1_0";
  inputs."nimmm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmm-v0_1_1".url = "path:./v0_1_1";
  inputs."nimmm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmm-v0_1_2".url = "path:./v0_1_2";
  inputs."nimmm-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimmm-v0_2_0".url = "path:./v0_2_0";
  inputs."nimmm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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