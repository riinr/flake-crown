{
  description = ''NWSync Repository Management utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nwsync-master".url = "path:./master";
  inputs."nwsync-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_0".url = "path:./0_1_0";
  inputs."nwsync-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_1".url = "path:./0_1_1";
  inputs."nwsync-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_2".url = "path:./0_1_2";
  inputs."nwsync-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_1_3".url = "path:./0_1_3";
  inputs."nwsync-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_0".url = "path:./0_2_0";
  inputs."nwsync-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_1".url = "path:./0_2_1";
  inputs."nwsync-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_2".url = "path:./0_2_2";
  inputs."nwsync-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_3".url = "path:./0_2_3";
  inputs."nwsync-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_4".url = "path:./0_2_4";
  inputs."nwsync-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_5".url = "path:./0_2_5";
  inputs."nwsync-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_2_6".url = "path:./0_2_6";
  inputs."nwsync-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_0".url = "path:./0_3_0";
  inputs."nwsync-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_1".url = "path:./0_3_1";
  inputs."nwsync-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_3_2".url = "path:./0_3_2";
  inputs."nwsync-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_0".url = "path:./0_4_0";
  inputs."nwsync-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_1".url = "path:./0_4_1";
  inputs."nwsync-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_2".url = "path:./0_4_2";
  inputs."nwsync-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nwsync-0_4_3".url = "path:./0_4_3";
  inputs."nwsync-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwsync-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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