{
  description = ''Tools for working with re-frame ClojureScript projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."reframe-master".url = "path:./master";
  inputs."reframe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_1_0".url = "path:./0_1_0";
  inputs."reframe-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_2_0".url = "path:./0_2_0";
  inputs."reframe-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_3_0".url = "path:./0_3_0";
  inputs."reframe-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_3_1".url = "path:./0_3_1";
  inputs."reframe-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_4_0".url = "path:./0_4_0";
  inputs."reframe-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reframe-0_4_1".url = "path:./0_4_1";
  inputs."reframe-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reframe-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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