{
  description = ''Everything you want to do with colors.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chroma-master".url = "path:./master";
  inputs."chroma-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_0_1".url = "path:./0_0_1";
  inputs."chroma-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_0".url = "path:./0_1_0";
  inputs."chroma-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_1".url = "path:./0_1_1";
  inputs."chroma-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_2".url = "path:./0_1_2";
  inputs."chroma-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_3".url = "path:./0_1_3";
  inputs."chroma-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_4".url = "path:./0_1_4";
  inputs."chroma-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_5".url = "path:./0_1_5";
  inputs."chroma-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_1".url = "path:./0_2_1";
  inputs."chroma-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_2".url = "path:./0_2_2";
  inputs."chroma-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_3".url = "path:./0_2_3";
  inputs."chroma-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_4".url = "path:./0_2_4";
  inputs."chroma-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_5".url = "path:./0_2_5";
  inputs."chroma-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-v0_1_0".url = "path:./v0_1_0";
  inputs."chroma-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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