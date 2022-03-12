{
  description = ''A library for making MIDI music'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paramidi-master".url = "path:./master";
  inputs."paramidi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_1_0".url = "path:./0_1_0";
  inputs."paramidi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_2_0".url = "path:./0_2_0";
  inputs."paramidi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_3_0".url = "path:./0_3_0";
  inputs."paramidi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_4_0".url = "path:./0_4_0";
  inputs."paramidi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_5_0".url = "path:./0_5_0";
  inputs."paramidi-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_6_0".url = "path:./0_6_0";
  inputs."paramidi-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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