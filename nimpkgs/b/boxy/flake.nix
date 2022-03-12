{
  description = ''2D GPU rendering with a tiling atlas.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."boxy-master".url = "path:./master";
  inputs."boxy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_1_0".url = "path:./0_1_0";
  inputs."boxy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_1_1".url = "path:./0_1_1";
  inputs."boxy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_2_0".url = "path:./0_2_0";
  inputs."boxy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_0".url = "path:./0_3_0";
  inputs."boxy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_1".url = "path:./0_3_1";
  inputs."boxy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_2".url = "path:./0_3_2";
  inputs."boxy-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_3".url = "path:./0_3_3";
  inputs."boxy-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."boxy-0_3_4".url = "path:./0_3_4";
  inputs."boxy-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."boxy-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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