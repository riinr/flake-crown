{
  description = ''HTTP Authentication and Authorization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpauth-master".url = "path:./master";
  inputs."httpauth-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_0".url = "path:./0_1_0";
  inputs."httpauth-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_2".url = "path:./0_1_2";
  inputs."httpauth-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_1_3".url = "path:./0_1_3";
  inputs."httpauth-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_2_0".url = "path:./0_2_0";
  inputs."httpauth-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth-0_3_0".url = "path:./0_3_0";
  inputs."httpauth-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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