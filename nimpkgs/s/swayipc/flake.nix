{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."swayipc-master".url = "path:./master";
  inputs."swayipc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-1_1_0".url = "path:./1_1_0";
  inputs."swayipc-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-1_1_1".url = "path:./1_1_1";
  inputs."swayipc-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_0".url = "path:./2_0_0";
  inputs."swayipc-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_1".url = "path:./2_0_1";
  inputs."swayipc-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_2".url = "path:./2_0_2";
  inputs."swayipc-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-2_0_3".url = "path:./2_0_3";
  inputs."swayipc-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_0_0".url = "path:./3_0_0";
  inputs."swayipc-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_0_1".url = "path:./3_0_1";
  inputs."swayipc-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_0".url = "path:./3_1_0";
  inputs."swayipc-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_1".url = "path:./3_1_1";
  inputs."swayipc-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_2".url = "path:./3_1_2";
  inputs."swayipc-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_3".url = "path:./3_1_3";
  inputs."swayipc-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_4".url = "path:./3_1_4";
  inputs."swayipc-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_5".url = "path:./3_1_5";
  inputs."swayipc-3_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_6".url = "path:./3_1_6";
  inputs."swayipc-3_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_7".url = "path:./3_1_7";
  inputs."swayipc-3_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."swayipc-3_1_8".url = "path:./3_1_8";
  inputs."swayipc-3_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."swayipc-3_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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