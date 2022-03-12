{
  description = ''Print fabulously in your terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fab-master".url = "path:./master";
  inputs."fab-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_1_0".url = "path:./v0_1_0";
  inputs."fab-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_2_0".url = "path:./v0_2_0";
  inputs."fab-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_3_0".url = "path:./v0_3_0";
  inputs."fab-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_3_1".url = "path:./v0_3_1";
  inputs."fab-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_0".url = "path:./v0_4_0";
  inputs."fab-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_1".url = "path:./v0_4_1";
  inputs."fab-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_2".url = "path:./v0_4_2";
  inputs."fab-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_3".url = "path:./v0_4_3";
  inputs."fab-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab-v0_4_4".url = "path:./v0_4_4";
  inputs."fab-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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