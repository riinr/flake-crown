{
  description = ''Parse config by defining an object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sim-master".url = "path:./master";
  inputs."sim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_1".url = "path:./0_1_1";
  inputs."sim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_2".url = "path:./0_1_2";
  inputs."sim-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_3".url = "path:./0_1_3";
  inputs."sim-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_4".url = "path:./0_1_4";
  inputs."sim-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_5".url = "path:./0_1_5";
  inputs."sim-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_6".url = "path:./0_1_6";
  inputs."sim-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_7".url = "path:./0_1_7";
  inputs."sim-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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