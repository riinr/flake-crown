{
  description = ''A game library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paranim-master".url = "path:./master";
  inputs."paranim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_1_0".url = "path:./0_1_0";
  inputs."paranim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_10_0".url = "path:./0_10_0";
  inputs."paranim-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_11_0".url = "path:./0_11_0";
  inputs."paranim-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_2_0".url = "path:./0_2_0";
  inputs."paranim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_3_0".url = "path:./0_3_0";
  inputs."paranim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_4_0".url = "path:./0_4_0";
  inputs."paranim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_5_0".url = "path:./0_5_0";
  inputs."paranim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_6_0".url = "path:./0_6_0";
  inputs."paranim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_7_0".url = "path:./0_7_0";
  inputs."paranim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_8_0".url = "path:./0_8_0";
  inputs."paranim-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_9_0".url = "path:./0_9_0";
  inputs."paranim-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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